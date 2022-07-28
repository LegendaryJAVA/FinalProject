package pkg.staff;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pkg.$.OracleResult;

@Repository
public class StaffDAO_impl implements StaffDAO {

    @Autowired
    SqlSession sqlSession;
    @Override
    public List<StaffVO> select() {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public List<OracleResult> delete(List<Map<String,Object>> staffs) {
        // TODO Auto-generated method stub
        return null;
    }
    @Override
    public List<OracleResult> update(List<Map<String,Object>> staffs) {
        // TODO Auto-generated method stub
        List<OracleResult> results = new ArrayList<OracleResult>();
        System.out.println("StaffDAO.update() ---");
        for(Map<String, Object> map : staffs) {
            System.out.println(map);
            sqlSession.selectList("STAFF.UPDATE", map);
            results.add(new OracleResult("staffidx").fromMap(map));
        }
        return results;
    }
    @Override
    public List<OracleResult> insert(List<Map<String,Object>> staffs) {
        List<OracleResult> results = new ArrayList<OracleResult>();
        System.out.println("StaffDAO.insert() ---");
        for(Map<String, Object> map : staffs) {
            System.out.println(map);
            sqlSession.selectList("STAFF.INSERT", map);
            results.add(new OracleResult("staffidx").fromMap(map));
        }

        return results;
    }
}
