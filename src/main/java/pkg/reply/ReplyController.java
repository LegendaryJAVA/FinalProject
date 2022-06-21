package pkg.reply;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {

	ReplyService replyService;
	
	public ReplyController(ReplyService replyService){
		this.replyService = replyService;
	}
	
	


}
