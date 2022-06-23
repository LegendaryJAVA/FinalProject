package pkg.member;


import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService_impl implements MemberService {

	@Autowired
	MemberDAO memberdao;
	
	public String loginchk(Map<String, Object> map) {
		
		return memberdao.loginchk(map);
	}
	public String chk(Map<String, Object> map) {
		return memberdao.chk(map);
	}
	public String insmem(Map<String, Object> map) {
		
		return memberdao.insmem(map);
	}
	@Override
	public List<MemberVO> selmem(Map<String, Object> map) {
		
		return memberdao.selmem(map);
	}
    
}
