package pkg.movie;

import java.util.List;

public interface MovieService {
    public List<MovieVO> searchMovieList(String keyword);
    public List<MovieVO> getMovieInfo(String docId);
}
