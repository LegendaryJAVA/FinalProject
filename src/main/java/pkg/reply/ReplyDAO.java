package pkg.reply;

import java.util.List;

public interface ReplyDAO {
	public void addReply();
	public List<ReplyVO> selectReplyList(String replyArticleId);
	
}
