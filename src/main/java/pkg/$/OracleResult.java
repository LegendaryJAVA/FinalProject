package pkg.$;

import java.util.Map;

public class OracleResult {
    private String pk, pkSelector, sqlErr, sqlMsg;

    public OracleResult (String pkSelector) {
        this.pkSelector = pkSelector;
    }

    public OracleResult fromMap(Map<String, Object> map) {
        this.pk = (String)map.get(this.pkSelector);
        this.sqlErr = (String)map.get("sqlErr");
        this.sqlMsg = (String)map.get("sqlMsg");
        return this;
    }
}
