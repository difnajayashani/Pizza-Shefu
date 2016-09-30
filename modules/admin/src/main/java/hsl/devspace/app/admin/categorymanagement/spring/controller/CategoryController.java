/*
package hsl.devspace.app.admin.categorymanagement.spring.controller;

import hsl.devspace.app.corelogic.domain.Category;
import hsl.devspace.app.corelogic.repository.category.CategoryRepositoryImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.sql.SQLIntegrityConstraintViolationException;
import java.util.List;

@Controller
@RequestMapping("/category")
public class CategoryController {

    private static final Logger LOG = LogManager.getLogger(CategoryController.class);

    @Autowired
    private CategoryRepositoryImpl category;

    */
/*
    * Add new category
    **//*


    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView showAddCateg(){ return  new ModelAndView("categAdd", "addCategory", new Category()); }

    @RequestMapping(value = "add_category")
    public ModelAndView addCategory(@ModelAttribute("addCategory") hsl.devspace.app.corelogic.domain.Category newCateg) throws SQLIntegrityConstraintViolationException {

        ModelAndView validator = new ModelAndView();

        validator.setViewName("addCategory");

        return validator;
    }

    */
/*
    * Get category list
    **//*

    @RequestMapping(value = "getCatLis")
    public ModelAndView retrieveCategoryTypes(@ModelAttribute("viewCatg") Category viewCat) throws SQLIntegrityConstraintViolationException {
        ModelAndView validator = new ModelAndView("index");

        List<Category> listCat = category.retrieveCategoryTypes();
      //  validator.addObject("list", categoryName);

       // return listCat;
        return validator;
    }
}
*/
