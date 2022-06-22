package pkg.member;

import java.util.Map;

public interface MemberDAO {
	public String loginchk(Map<String, Object> map);
	public String chk(Map<String, Object> map);
	public String insmem(Map<String, Object> map);
	
}
