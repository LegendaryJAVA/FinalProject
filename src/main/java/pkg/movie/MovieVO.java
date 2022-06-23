package pkg.movie;

public class MovieVO {
    private String docId, title, titleEng,
            titleEtc, nation, company, plot, runtime,
            genre, posters, keywords, releaseDate, prodYear;
    // movie 테이블 속성 외에도 [평균 평점]을 article에서, [출연진]을 movieCast에서 구해와햐함
    public String getCompany() {
        return company;
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
    
    public String getReleaseDate() {
        return releaseDate;
    }
    
    public void setReleaseDate(String releaseDate) {
        this.releaseDate = releaseDate;
    }
    
    public String getProdYear() {
        return prodYear;
    }
    
    public void setProdYear(String prodYear) {
        this.prodYear = prodYear;
    }
}
