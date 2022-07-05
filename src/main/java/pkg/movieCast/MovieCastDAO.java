package pkg.movieCast;

import java.util.List;
import java.util.Map;

import pkg.$.OracleResult;

public interface MovieCastDAO {

    // select
    List<MovieCastVO> select (Map<String, Object> map);

    // insert
    List<OracleResult> insert (List<Map<String,Object>> params);
    
    // merge into 
    List<OracleResult> update (List<Map<String,Object>> params);
	
}
