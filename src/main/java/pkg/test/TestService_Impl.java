package pkg.test;

import java.util.List;

import org.springframework.stereotype.Service;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class TestService_Impl  {

    @Autowired
    TestDAO testDAO;

    public List<TestVO> getData(String idx) {
        
        return testDAO.select(idx);
    }
}
