package pkg.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

   
    @RequestMapping("login")
    public String login (Model model, HttpServletRequest request, HttpServletResponse response) {
<<<<<<< HEAD
=======
    	String prevPage = "test";
    	System.out.println("call login");
>>>>>>> 55659e3988baea79019f14122be85d6a1f8e99e7
    	return "login";
    }
    @RequestMapping("logout")
    public String logout (HttpServletRequest request) {
    	System.out.println("call logout");
    	HttpSession session = request.getSession();
    	session.invalidate();
        return "redirect:"+(String)request.getHeader("Referer");
    };
    @RequestMapping("register")
    public String register () {

        return "register";
    }
<<<<<<< HEAD
    @RequestMapping("myform")
    public String myform() {
    	
    	return "userProfile";
    }
    
=======
>>>>>>> 55659e3988baea79019f14122be85d6a1f8e99e7
 
    public String resign () {
        
        return "";
    }

}
