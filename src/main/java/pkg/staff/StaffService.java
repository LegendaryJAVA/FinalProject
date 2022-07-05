package pkg.staff;


import java.util.*;
import pkg.$.OracleResult;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StaffService {

    @Autowired
    StaffDAO dao;

    public List<StaffVO> select () {
        return dao.select();
    }
    public List<OracleResult> delete (List<Map<String,Object>> staffs) {
        return dao.delete(staffs);
    }
    public List<OracleResult> update (List<Map<String,Object>> staffs) {
        return dao.update(staffs);
    }
    public List<OracleResult> insert (List<Map<String,Object>> staffs) {
        return dao.insert(staffs);
    }
    public List<OracleResult> reflect (List<Map<String,Object>> staffs) {
        return insert(staffs);
    }
    
}
