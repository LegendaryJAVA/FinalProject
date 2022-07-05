package pkg.movieCast;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pkg.$.OracleResult;

@Service
public class MovieCastService_impl implements MovieCastService {

    @Autowired
    MovieCastDAO dao;

    @Override
    public List<MovieCastVO> select(Map<String, Object> params) {
        return dao.select(params);
    }
    @Override
    public List<OracleResult> insert(List<Map<String, Object>> params) {
        return dao.insert(params);
    }
    @Override
    public List<OracleResult> delete(List<Map<String, Object>> params) {
        return null;
    }
    @Override
    public List<OracleResult> reflect(List<Map<String, Object>> params) {
        return insert(params);
    }
    @Override
    public List<OracleResult> update(List<Map<String, Object>> params) {
        return dao.update(params);
    }
    
}
