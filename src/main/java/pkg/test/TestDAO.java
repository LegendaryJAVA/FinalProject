package pkg.test;

import java.util.List;

public interface TestDAO {

    public List<TestVO> select(String idx);
    public List<TestVO> selectAsProcedure(String idx);
}
