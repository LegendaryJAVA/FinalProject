package pkg.movieCast;

import java.util.List;
import java.util.Map;

public interface MovieCastDAO {

	 //Director API ��������.
	Map<String, Object> InsertDirectorAPI(Map<String, Object> params);
	
	
	//Actor API ��������.
	Map<String, Object> InsertActorAPI(Map<String, Object> params);
	
}
