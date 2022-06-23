package pkg.reply;

import org.springframework.stereotype.Controller;

@Controller
public class ReplyController {

	ReplyService replyService;
	
	public ReplyController(ReplyService replyService){
		this.replyService = replyService;
	}
	
	


}
