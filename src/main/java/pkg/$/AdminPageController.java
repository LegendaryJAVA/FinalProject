package pkg.$;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminPageController {
    
    @GetMapping("admin.movie")
    public String moviePage () {

        return "";
    }
    @GetMapping("admin.member")
    public String memberPage () {

        return "";
    }
}
