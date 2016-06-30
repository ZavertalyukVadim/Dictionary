package controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import services.DictionaryService;

/**
 * Created by Вадимка on 05.06.2016.
 */
@Controller
@RequestMapping(value = "/category")
public class CategoryController {
    @Autowired
    DictionaryService dictionaryService;

//    @RequestMapping(method = RequestMethod.GET)
//    public String getAllInfTest(ModelMap model) throws SQLException {
//
//        model.addAttribute("categories", dictionaryService.getCategories());
//        return "category";
//
//    }

    @RequestMapping(value="/{id}", method=RequestMethod.GET)
    public String getInfoWord(ModelMap model, @PathVariable("id") int id){
//        model.addAttribute("category",dictionaryService.getSortedCategoryWords(id));
        model.addAttribute("categoryWords",dictionaryService.getSortedCategoryWords(id));
        model.addAttribute("cat", dictionaryService.getCategoryById(id));
        return "category";
    }



}
