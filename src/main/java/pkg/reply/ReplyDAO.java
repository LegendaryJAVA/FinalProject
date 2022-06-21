package pkg.reply;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {
	
	SqlSessionTemplate sqlSession;
	
	@Autowired
	public ReplyDAO(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	
	public void addReply(){
	
	}
	
	
}
 