package pkg.movieCast;

import java.util.*;

import pkg.$.OracleResult;

public interface MovieCastService {

    List<MovieCastVO> select (Map<String, Object> params);
    List<OracleResult> insert (List<Map<String, Object>> params);
    List<OracleResult> reflect (List<Map<String, Object>> params);
    List<OracleResult> delete (List<Map<String, Object>> params);
    List<OracleResult> update (List<Map<String, Object>> params);
}
