package pkg.staff;


import java.util.*;
import pkg.$.OracleResult;

public interface StaffDAO {
    
    public List<StaffVO> select();
    public List<OracleResult> update(List<Map<String,Object>> staffs);
    public List<OracleResult> insert(List<Map<String,Object>> staffs); 
    public List<OracleResult> delete(List<Map<String,Object>> staffs); 
}
