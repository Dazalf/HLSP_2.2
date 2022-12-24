package eat3160.HLSP22.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import eat3160.HLSP22.model.Users;

/**
 * This controller handles requests related to the registration of a user. 
 * @author alf-s
 */

@RequestMapping("/account*")
@Controller
public class AccountController {
	
	@RequestMapping("/view")
	public String getLoginForm(HttpSession session, HttpServletResponse response) 
			throws Exception {
		
		if(session.getAttribute("loggedIn") != null || (boolean)session.getAttribute("loggedIn") == true) {
			return "viewUserProfile";
		}else {
			//If the user isn't logged in, send an 403 error and return null as the 'view'. This ensures the user cannot access
			//the loginForm if they are already logged in. 
			response.sendError(403);
			return null;
		}		
	}
}
