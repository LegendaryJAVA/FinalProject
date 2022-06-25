package pkg.member;


import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService_impl implements MemberService {

	@Autowired
	MemberDAO memberdao;
	
	@Override
	public String loginchk(Map<String, Object> map) {
		
		return memberdao.loginchk(map);
	}
	@Override
	public String chk(Map<String, Object> map) {
		return memberdao.chk(map);
	}
	@Override
	public String insmem(Map<String, Object> map) {
		
		return memberdao.insmem(map);
	}
	@Override
	public List<MemberVO> selmem(Map<String, Object> map) {
		
		return memberdao.selmem(map);
	}
	@Override
	public String updatemem(Map<String, Object> map) {
		
		return memberdao.updatemem(map);
	}
    
}
