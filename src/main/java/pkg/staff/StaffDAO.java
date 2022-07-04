package pkg.staff;


import java.util.Map;

public interface StaffDAO {
    
    public Map<String, Object> select();
    public Map<String, Object> update(Map<String, Object> staffs);
    public Map<String, Object> delete(); 
}
