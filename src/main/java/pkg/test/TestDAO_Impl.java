package pkg.test;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAO_Impl implements TestDAO {
    
    @Autowired
    SqlSession sqlSession;

    @Override
    public List<TestVO> select(String idx) {
        return sqlSession.selectList("test.getData", idx);
    }
    @Override
    public List<TestVO> selectAsProcedure(String idx) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("idx", "");
        sqlSession.selectList("test.getDataAsProcedure", idx);
        return (List<TestVO>)map.get("result");
    }
}
