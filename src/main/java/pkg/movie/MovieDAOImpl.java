package pkg.movie;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class MovieDAOImpl implements MovieDAO{
    
	
	@Autowired
	SqlSessionTemplate sqlSession;

	

	
	
	public List<MovieVO> getMovieList(String keyword) {
					
			Map<String, Object> map = new HashMap<String, Object>();
						
			//reply.selectMovieList
			map.put("keyword", keyword);
			
			sqlSession.selectList("movie.selectMovieList", map);
			
			List<MovieVO> movieList =  (List<MovieVO>)map.get("result");
						
			return movieList;
			
		}
	
	
	public Map<String, List<String>> getMovieAPI(Map<String, Object> params){				
 			
			List<Object> API = (List<Object>)params.get("Data");        //순수한 API  전체 데이터 {Data = [{}]} 
            Map<String, Object> API2 = (Map<String,Object>)API.get(0);		  
 			List<Object> API3 = (List<Object>)API2.get("Result");	    // API내  Result객체 안에 있는 데이터 가져오기.(전체 데이터)
            Map<String, Object> map = new HashMap<String, Object>();
            
            Map<String, List<String>> restoreMap = new HashMap<String,List<String>>();
            List<String> restoreList = new ArrayList<String>();
            
            
            
            
            
            for(int i = 0; i<API3.size(); i++) {
	            Map<String, Object> realData = (Map<String, Object>)API3.get(i);   		//  전체 데이터에서 1개씩 가져온다.
	                
	            /*
	            System.out.println("DOCID  -----------------" +  realData.get("DOCID"));
	            System.out.println("title  -----------------" + realData.get("title"));
	            System.out.println("titleEng  -----------------" + realData.get("titleEng"));
	            System.out.println("titleEtc  -----------------" + realData.get("titleEtc"));
	            System.out.println("prodYear  -----------------" + realData.get("prodYear"));
	            System.out.println("nation  -----------------" + realData.get("nation"));
	            System.out.println("runtime  -----------------" + realData.get("runtime"));
	            System.out.println("genre  -----------------" + realData.get("genre"));
	            System.out.println("plots  -----------------" + realData.get("plots"));
	            System.out.println("releaseDate  -----------------" + realData.get("releaseDate"));
	            System.out.println("keywords  -----------------" + realData.get("keywords"));
	            System.out.println("company  -----------------" + realData.get("company"));
	            System.out.println("posters  -----------------" + realData.get("posters"));
	            System.out.println("plots  -----------------" + realData.get("plots"));
	            */
	            
	            
	            map.put("DOCID", realData.get("DOCID"));
	            map.put("title", realData.get("title"));
	            map.put("titleEng", realData.get("titleEng"));
	            map.put("titleEtc",  realData.get("titleEtc"));
	            map.put("prodYear", realData.get("prodYear"));
	            map.put("nation", realData.get("nation"));
	            map.put("runtime", realData.get("runtime"));     
	            map.put("genre", realData.get("genre"));
	            	            
	            //plots는 일단 배열.
	            Map<String,Object> plotsMap = (Map<String,Object>)realData.get("plots");
	         	List<Object> plotsList = (List<Object>)plotsMap.get("plot");
	         	Map<String,Object> realplotsMap = (Map<String,Object>)plotsList.get(0);
				map.put("plots", realplotsMap.get("plotText"));
	            			
	            map.put("posters", realData.get("posters"));
	            map.put("releaseDate", realData.get("releaseDate"));
	            map.put("keywords", realData.get("keywords"));
	            map.put("company", realData.get("company"));
            
	            sqlSession.selectList("movie.TESTMovieList", map);    
	      
	           	           
	           
	            
	            
	            // sqlCode ==> SQLCODE
	            // sqlErrm ==> SQLERRM
	            // ErrMsg ==> 프로시져 인자로 정의한 "O_MSG" --> 오류메시지 직접 작성
	            restoreList.add( (String)map.get("sqlCode"));
	            restoreList.add( (String)map.get("sqlErrm"));
	            restoreList.add( (String)map.get("ErrMsg"));      
	          }
            
            restoreMap.put("result", restoreList);
 	       		
		return restoreMap;
	}
		
		
	}
	


