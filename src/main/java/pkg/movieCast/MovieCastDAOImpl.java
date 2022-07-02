package pkg.movieCast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MovieCastDAOImpl implements MovieCastDAO{
    
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Map<String, Object>  InsertDirectorAPI(Map<String, Object> params){	
		List<Object> API = (List<Object>)params.get("Data");        							//������ API  ��ü ������ {Data = [{}]} 
        Map<String, Object> API2 = (Map<String,Object>)API.get(0);		  
		List<Object> API3 = (List<Object>)API2.get("Result");	  							     // API��  Result��ü �ȿ� �ִ� ������ ��������.(��ü ������) -->   [{DOCID=F01071, movieId=F, movieSeq=01071, titl......	
		
		Map<String,Object> mybatisMap = new HashMap<String,Object>();  							//���̹�Ƽ���� Map ����
		
		
		
		Map<String, Object> responseErrResultMap = new HashMap<>();
		List<Map<String, String>> mybatisErrorMsgList = new ArrayList<>();                                   //������� ���� �׸�.(���̹�Ƽ�� �����޽���)
		
		for(int i=0; i<API3.size(); i++) {
			Map<String, DirectorVO> realData = (Map<String, DirectorVO>)API3.get(i);           // �� �����Ϳ��� ��ü�� �ϳ��� ���´�. -->  [{DOCID=F01071, movieId=F, movieSeq=01071, titl......
			Map<String, Object> directorJSON = (Map<String, Object>)realData.get("directors"); //--> ���������� : {director=[{directorNm=�ɴ� �����װ�, directorEnNm=Kenny Ortega, directorId=00094144}]}
			List<Object> directorDataJSON =  (List<Object>)directorJSON.get("director");
			Map<String,Object> superRealData  = (Map<String,Object>)directorDataJSON.get(0);             //--> ������ �迭�� �ϳ���, 0��° �ε����� ������.
							
			mybatisMap.put("directorNm", superRealData.get("directorNm"));
			mybatisMap.put("directorEnNm", superRealData.get("directorEnNm"));
			mybatisMap.put("directorId", superRealData.get("directorId"));

			sqlSession.selectList("moviecast.DirectorAPI", mybatisMap);
					
			
			Map<String,String> mybatisErrResult = new HashMap<>();
			mybatisErrResult.put("DOCID", (String)superRealData.get("directorId"));
			mybatisErrResult.put("ErrMsg", (String)mybatisMap.get("ErrMsg"));
			mybatisErrResult.put("sqlCode", (String)mybatisMap.get("sqlCode"));
			mybatisErrResult.put("sqlErrm", (String)mybatisMap.get("sqlErrm"));
			
			
			//List에 Map을 담아준다. 에러 한 세트씩 담는 그릇. --> 컨트롤러에서는 다시 리스트를 뺴서, 돌리면 끝.
			mybatisErrorMsgList.add(mybatisErrResult);
		}
		responseErrResultMap.put("result", mybatisErrorMsgList);
		
		
		return responseErrResultMap;
	}
	
	
	
	@Override
	public Map<String, Object> InsertActorAPI(Map<String, Object> params){
		List<Object> API = (List<Object>)params.get("Data");        							//������ API  ��ü ������ {Data = [{}]} 
        Map<String, Object> API2 = (Map<String,Object>)API.get(0);		  
		List<Object> API3 = (List<Object>)API2.get("Result");	  							     // API��  Result��ü �ȿ� �ִ� ������ ��������.(��ü ������) -->   [{DOCID=F01071, movieId=F, movieSeq=01071, titl......	
		
		Map<String,Object> mybatisMap = new HashMap<String,Object>();  							//���̹�Ƽ���� Map ����
		
		List<Map<String,String>> mybatisErrorMsgList = new ArrayList<>();                                   //������� ���� �׸�.(���̹�Ƽ�� �����޽���)
	
		
		Map<String, Object> responseErrResultMap = new HashMap<>();
		
		for(int i=0; i<API3.size(); i++) {
			Map<String, DirectorVO> realData = (Map<String, DirectorVO>)API3.get(i);           // �� �����Ϳ��� ��ü�� �ϳ��� ���´�. -->  [{DOCID=F01071, movieId=F, movieSeq=01071, titl......
			Map<String, Object> actorJSON = (Map<String, Object>)realData.get("actors"); 		//--> ���������� : {actors=[{actorNm=�ɴ� �����װ�, actorEnNm=Kenny Ortega, actorId=00094144}]}
			List<Object> actorDataJSON =  (List<Object>)actorJSON.get("actor");
			for(int j=0; j<actorDataJSON.size(); j++) {
						Map<String,Object> superRealData  = (Map<String,Object>)actorDataJSON.get(j);             // j���� �ε�
										
						mybatisMap.put("actorNm", superRealData.get("actorNm"));
						mybatisMap.put("actorEnNm", superRealData.get("actorEnNm"));
						mybatisMap.put("actorId", superRealData.get("actorId"));
						sqlSession.selectList("moviecast.ActorAPI", mybatisMap);
		
						
						Map<String, String> mybatisResultRestore = new HashMap<>();
						
						//마이바티스 결과 하나하나를 map에 담아서.
						mybatisResultRestore.put("ACTORID", (String)superRealData.get("actorId") );
						mybatisResultRestore.put("ErrMsg", (String)mybatisMap.get("ErrMsg"));
						mybatisResultRestore.put("sqlCode", (String)mybatisMap.get("sqlCode"));
						mybatisResultRestore.put("sqlErrm", (String)mybatisMap.get("sqlErrm"));
						
						// map 하나씩 리스트에 담는다.  --> map 안에는 에러메시지 3개가 있다.
						mybatisErrorMsgList.add(mybatisResultRestore);
			}	
		}	
		responseErrResultMap.put("result", mybatisErrorMsgList);
		return responseErrResultMap;
	}
	
	
}
