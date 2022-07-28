package pkg.movie;

import java.util.List;

public class MovieUtil {
    
    // 영화 목록 HTML SET, 메인 페이지에서 캐러셀 목록 보여줄 떄 사용됨
    public static String HTML_carousel (List<MovieVO> movies) {
        String HTML = "";

        

        HTML += "<div class='cw--carousel'>";
		for(MovieVO vo : movies) {

            String poster = vo.getPosters();
            if (poster != null) {
                poster = poster.split("\\|")[0];
            } else poster = "resource/image/noposter.png";

			HTML += "<div class='dagger dagger-horizontal' data-docid=" + vo.getDOCID()  + ">";
			HTML += 	"<div class='poster'> <img src='" + poster + "'> </div>";
			HTML += 	"<div class='desc'>";
			HTML += 		"<div class='title'>" + vo.getTitle() + "</div>";
			HTML += 		"<div class='edge'>";
			HTML += 			"<div class='j'>" + vo.getGenre() + "</div>";
			//HTML += 			"<div class='l'>" + 출연진 정보 + "</div>";
			//HTML += 			"<div class='m'>" + 감독 정보 등 + "</div>";
			HTML +=			"</div>";
			HTML += 	"</div>";
			HTML += "</div>";
		}
        HTML += "</div>";
		return HTML;
    }
    // 검색결과 HTML SET, movie.search에 수직 목록 보여줄 때 사용됨
    public static String HTML_movieInfo (List<MovieVO> movies) {
        String HTML = "";
        HTML += "<div class='search'>";
		for(MovieVO vo : movies) {
			HTML += "<div class='dagger dagger-vertical' data-docid=" + vo.getDOCID()  + ">";
			HTML += 	"<div class='poster'> <img src='" + vo.getPosters() + "'> </div>";
			HTML += 	"<div class='desc'>";
			HTML += 		"<div class='title'>" + vo.getTitle() + "</div>";
			HTML += 		"<div class='edge'>";
			HTML += 			"<div class='i'>" + vo.getReleaseDate() + "</div>";
			HTML += 			"<div class='j'>" + vo.getGenre() + "</div>";
			HTML += 			"<div class='k'>" + vo.getRuntime() + "</div>";
			//HTML += 			"<div class='l'>" + 출연진 정보 + "</div>";
			//HTML += 			"<div class='m'>" + 감독 정보 등 + "</div>";
			HTML +=			"</div>";
			HTML += 	"</div>";
			HTML += "</div>";
		}
        HTML += "</div>";
		return HTML;
    }
}
