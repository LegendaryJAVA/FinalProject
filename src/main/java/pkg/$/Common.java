package pkg.$;

import java.util.*;

public class Common {

    // mybatis 실행 후 Map에서 oracle 결과값과 primary key만 추출하여 반환하는 메서드
    // ex)
    // sqlSession.selectList("your-procedure-name", map);
    // resultMap.put("result", Common.extract(map)) 또는 resultList.add(Common.extract(map));
    public static Map<String, Object> extract (Map<String, Object> source, String pk) {
        String[] extractKeys = { "ErrMsg", "sqlCode", "sqlErrm", pk };
        Map<String, Object> oracleResultMap = new HashMap<String, Object>();
        for (String key : extractKeys) oracleResultMap.put(key, source.get(key));
        return oracleResultMap;
    }
}
