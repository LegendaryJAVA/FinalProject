package pkg.movie;

public class MovieVO {
    private String docId, title, titleEng, titleEtc, nation, company, prodyear, plot, runtime, genre, posters, keywords;
    // movie �뀒�씠釉� �냽�꽦 �쇅�뿉�룄 [�룊洹� �룊�젏]�쓣 article�뿉�꽌, [異쒖뿰吏�]�쓣 movieCast�뿉�꽌 援ы빐���뼆�븿
   
    
    public String getCompany() {
        return company;
    }
    public String getProdyear() {
		return prodyear;
	}
	public void setProdyear(String prodyear) {
		this.prodyear = prodyear;
	}
	public void setCompany(String company) {
        this.company = company;
    }
    public String getDocId() {
        return docId;
    }
    public void setDocId(String docId) {
        this.docId = docId;
    }
    public String getGenre() {
        return genre;
    }
    public void setGenre(String genre) {
        this.genre = genre;
    }
    public String getKeywords() {
        return keywords;
    }
    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
    public String getNation() {
        return nation;
    }
    public void setNation(String nation) {
        this.nation = nation;
    }
    public String getPlot() {
        return plot;
    }
    public void setPlot(String plot) {
        this.plot = plot;
    }
    public String getPosters() {
        return posters;
    }
    public void setPosters(String posters) {
        this.posters = posters;
    }
    public String getRuntime() {
        return runtime;
    }
    public void setRuntime(String runtime) {
        this.runtime = runtime;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getTitleEng() {
        return titleEng;
    }
    public void setTitleEng(String titleEng) {
        this.titleEng = titleEng;
    }
    public String getTitleEtc() {
        return titleEtc;
    }
    public void setTitleEtc(String titleEtc) {
        this.titleEtc = titleEtc;
    }
}
