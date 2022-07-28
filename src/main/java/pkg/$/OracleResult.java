package pkg.$;

import java.util.HashMap;
import java.util.Map;

public class OracleResult {
    public String pkSelector;
    private Map<String, Object> map;

    public OracleResult (String pkSelector) {
        this.pkSelector = pkSelector;
    }

    public OracleResult fromMap(Map<String, Object> map) {

        Map<String, Object> ov = new HashMap<String, Object>();
        ov.put(this.pkSelector, (String)map.get(this.pkSelector));
        ov.put("sqlErr", (String)map.get("sqlErr") );
        ov.put("sqlMsg", (String)map.get("sqlMsg"));
        this.map = ov;
        return this;
    }
    public Map<String, Object> getMap() {
        return this.map;
    }
}
