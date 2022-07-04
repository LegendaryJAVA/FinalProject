package pkg.staff;


import java.util.Map;

import org.springframework.stereotype.Service;

@Service
public class StaffService {

    StaffDAO dao;

    public Map<String, Object> delete () {
        return dao.delete();
    }
    public Map<String, Object> update (Map<String, Object> staffs) {
        return dao.update(staffs);
    }
    public Map<String, Object> select () {
        return dao.select();
    }
    public Map<String, Object> reflect (Map<String, Object> staffs) {
        return dao.update(staffs);
    }

    
}
