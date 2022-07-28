package pkg.movieCast;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pkg.$.OracleResult;



// 오성훈, create 2022-07-05
@Repository
public class MovieCastDAO_impl implements MovieCastDAO {

    @Autowired
    SqlSession sqlSession;

    // select
    public List<MovieCastVO> select (Map<String, Object> map) {

        sqlSession.selectList("MOVIECAST.SELECT", map);
        return (List<MovieCastVO>) map.get("result");
    }

    // insert
    public List<OracleResult> insert (List<Map<String,Object>> params) {
        List<OracleResult> results = new ArrayList<OracleResult>();
        System.out.println("MovieCastDAO_impl.insert()");
        for(Map<String, Object> map : params) {
            System.out.println(map);
            sqlSession.selectList("MOVIECAST.INSERT", map);
            results.add(new OracleResult("castIdx").fromMap(map));
        }
        
        return results;
    }

    // merge into 
    public List<OracleResult> update (List<Map<String,Object>> params) {
        List<OracleResult> results = new ArrayList<OracleResult>();
        for(Map<String, Object> map : params) {
            sqlSession.selectList("MOVIECAST.UPDATE", map);
            results.add(new OracleResult("castIdx").fromMap(map));
        }
        
        return results;
    }
    
}
