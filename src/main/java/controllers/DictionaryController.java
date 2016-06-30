package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import services.DictionaryService;

import java.sql.SQLException;

/**
* Created by Вадимка on 30.04.16.
*/
@Controller
@RequestMapping(value = "/dictionary")
public class DictionaryController {

    @Autowired
    DictionaryService dictionaryService;

    @RequestMapping(method = RequestMethod.GET)
    public String getAllInfTest(ModelMap model) throws SQLException {
        model.addAttribute("allWords", dictionaryService.getWords());
        model.addAttribute("categories", dictionaryService.getCategories());
//        model.addAttribute("sense",dictionaryService.getSenses());
        return "dictionary";

    }



}
