package pkg.member;


import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class MemberDAO_Impl implements MemberDAO{

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	public String loginchk(Map<String, Object> map) {
		sqlSessionTemplate.selectList("loginchk",map);
		if(map.get("error1")==null) {
			return (String) map.get("result");	
		}
		
		return "FAIL";
	}

	public String chk(Map<String, Object> map) {
		Map<String, Object> hmep = (Map<String,Object>)map.get("data");
		sqlSessionTemplate.selectList("chk",hmep);		
		return (String) hmep.get("result");
	}


	public String insmem(Map<String, Object> map) {
		
		sqlSessionTemplate.selectList("insmem",map);
		System.out.println(map.get("result"));
		System.out.println(map.get("error"));
		System.out.println(map.get("error2"));
		if(map.get("result") ==null) {
			System.out.println("에러낫다 ㅠㅠ");
		}
		
		
		return null;
	}

}
