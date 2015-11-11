package nt.ngc.com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NgcWebPageController {

    @RequestMapping("/")
    public ModelAndView requestHomePage() {
        return new ModelAndView("index");
    }
}
