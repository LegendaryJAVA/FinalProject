package pkg.reply;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplyService_impl implements ReplyService{
	
	ReplyDAO replyDAO;
	@Autowired
	public ReplyService_impl(ReplyDAO replyDAO){
		this.replyDAO = replyDAO;
	}
	
	@Override
	public List<ReplyVO> selectReplyList(String replyArticleId) {
		return replyDAO.selectReplyList(replyArticleId);
	}
	
	
	
	
	
}
