package controllers;

import entity.Word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import services.DictionaryService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * Created by Вадимка on 05.06.16.
 */
@Controller
public class SearchController {

    @Autowired
    DictionaryService dictionaryService;

    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String searchInLine(@RequestParam(value = "line")String s,
                               HttpServletRequest request,
                               HttpServletResponse response,
                               ModelMap modelMap) throws UnsupportedEncodingException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        List<Word> words = dictionaryService.getLikeWords(s);
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
        System.out.println(words.get(0).getWord());
        System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
                modelMap.addAttribute("words", words);
        return "response";
    }

}
