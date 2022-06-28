package pkg.member;

import java.util.List;
import java.util.Map;

public interface MemberDAO {
	public String loginchk(Map<String, Object> map);
	public String chk(Map<String, Object> map);
	public String insmem(Map<String, Object> map);
	public List<MemberVO> selmem(Map<String, Object> map);
	public String updatemem(Map<String, Object> map);
	
}
