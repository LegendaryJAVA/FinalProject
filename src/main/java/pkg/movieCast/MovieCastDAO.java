package pkg.movieCast;

import java.util.List;
import java.util.Map;

public interface MovieCastDAO {

	
	 Map<String, List<String>> getDirectorAPI(Map<String, Object> params);
	
}
