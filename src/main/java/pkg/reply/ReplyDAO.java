package pkg.reply;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ReplyDAO {
	
	SqlSessionTemplate sqlSession;
	
	@Autowired
	public ReplyDAO(SqlSessionTemplate sqlSession){
		this.sqlSession = sqlSession;
	}
	
	public void addReply(){
	
	}
	
	public List<ReplyVO> selectReplyList(String replyArticleId){
		Map<String, Object> map = new HashMap<>();
		map.put("replyArticleId",replyArticleId);
		
		sqlSession.selectList("selectReplyList",map);
		
		List<ReplyVO> resultList = (List<ReplyVO>) map.get("result");
		
		return resultList;
	}
	
	
}
 