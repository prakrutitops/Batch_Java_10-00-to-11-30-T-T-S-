package io.javabrains.springbootstarter.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import io.javabrains.springbootstarter.model.Article;
import io.javabrains.springbootstarter.repository.Articlerepositary;

@Service
//Spring @Service annotation is used with classes that provide some business functionalities. Spring context will autodetect these classes when annotation-based configuration and classpath scanning is used.
@Transactional
//@Transactional on itself or its members, Spring creates a proxy that implements the same interface(s) as the class you're annotating
@Repository
//@RequestMapping annotation used on request handling methods.
public class Articleservice_class implements Articleservice{
	 @Autowired
	 Articlerepositary articleRepository;
	
	 @Override
	 public List<Article> getAllArticles() {
	  return (List<Article>) articleRepository.findAll();
	 }

	/* @Override
	 public Article getArticleById(long id) {
	  return articleRepository.findOne(id).getId();
	 }
*/
	 @Override
	 public void saveOrUpdate(Article article) {
	  articleRepository.save(article);
	 }

	/* @Override
	 public void deleteArticle(long id) {
	  articleRepository.deleteById(id);
	 }
*/
	@Override
	public Article getArticleById(long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteArticle(long id) {
		// TODO Auto-generated method stub
		
	}


}
