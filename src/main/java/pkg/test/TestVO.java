package pkg.test;

public class TestVO {
    private String idx, name, seq;

    TestVO (String idx, String name, String seq) {
        this.idx = idx;
        this.name = name;
        this.seq = seq;
    } 

	public String getIdx() {
		return idx;
	}

	public void setIdx(String idx) {
		this.idx = idx;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSeq() {
		return seq;
	}

	public void setSeq(String seq) {
		this.seq = seq;
	}
}
