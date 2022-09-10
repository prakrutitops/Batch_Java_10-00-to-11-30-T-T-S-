package io.javabrains.springbootstarter.hello;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import io.javabrains.springbootstarter.model.Article;
import io.javabrains.springbootstarter.service.Articleservice;

@RestController
//RestController is a convenience annotation that is itself annotated with @Controller and @ResponseBody. This annotation is used to mark a class as request handler for RESTful web services.
@RequestMapping(value="/article")
public class HelloController {
	 @Autowired
	 Articleservice articleService;
	 
	 //get all details
	 @RequestMapping(value="/list", method=RequestMethod.GET)
	 public ModelAndView list() {
	  ModelAndView model = new ModelAndView("article_list");
	  List<Article> articleList = articleService.getAllArticles();
	  model.addObject("articleList", articleList);
	  
	  return model;
	 }
	 //Add details
	 @RequestMapping(value="/addArticle/", method=RequestMethod.GET)
	 public ModelAndView addArticle() {
	  ModelAndView model = new ModelAndView();
	  
	  Article article = new Article();
	  model.addObject("articleForm", article);
	  model.setViewName("article_form");
	  
	  return model;
	 }
	 //update detail
	 @RequestMapping(value="/updateArticle/{id}", method=RequestMethod.GET)
	 public ModelAndView editArticle(@PathVariable long id) {
	  ModelAndView model = new ModelAndView();
	  
	  Article article = articleService.getArticleById(id);
	  model.addObject("articleForm", article);
	  model.setViewName("article_form");
	  
	  return model;
	 }
	 
	 @RequestMapping(value="/saveArticle", method=RequestMethod.POST)
	 public ModelAndView save(@ModelAttribute("articleForm") Article article) {
	  articleService.saveOrUpdate(article);
	  
	  return new ModelAndView("redirect:/article/list");
	 }
	 
	 @RequestMapping(value="/deleteArticle/{id}", method=RequestMethod.GET)
	 public ModelAndView delete(@PathVariable("id") long id) {
	  articleService.deleteArticle(id);
	  
	  return new ModelAndView("redirect:/article/list");
	 }
}
