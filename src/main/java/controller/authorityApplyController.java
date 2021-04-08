package controller;


import io.swagger.annotations.ApiOperation;
import model.Application;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import service.UserService;

@Controller
public class authorityApplyController {
    @Autowired
    private UserService userService;

    @ApiOperation(value = "申请权限", httpMethod = "GET")
    @RequestMapping(value = "/apply_authority", method = RequestMethod.GET)
    public String applyAuthority() {
        return "apply_authority";
    }


    @ApiOperation(value = "增加权限申请", httpMethod = "POST")
    @RequestMapping(value = "/addAuthoritySuccess", method = RequestMethod.POST)
    public String addAuthoritySuccess(@RequestParam String text, @RequestParam int userId) {
        System.out.println(text);
        Application app = new Application();
        app.setUserId(userId);
        app.setIsPass(0);
        app.setApplicationReason(text);
        userService.askforManager(userId, text);
        return "redirect:/apply_authority";
    }


}
