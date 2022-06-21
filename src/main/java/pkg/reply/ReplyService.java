package pkg.reply;

import java.util.List;

public interface ReplyService {
    public List<ReplyVO> selectReplyList(String replyArticleId);
}
