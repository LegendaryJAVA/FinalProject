package pkg.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TestService {

    @Autowired
    TestDAO testDAO;

    public List<TestVO> getData(String idx) {
        return testDAO.select(idx);
    }

    public List<TestVO> getDataAsProcedure(String idx) {
        return testDAO.selectAsProcedure(idx);
    }
}
