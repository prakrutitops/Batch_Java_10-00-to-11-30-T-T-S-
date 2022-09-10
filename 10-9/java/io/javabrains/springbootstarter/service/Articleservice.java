package io.javabrains.springbootstarter.service;

import java.util.List;

import io.javabrains.springbootstarter.model.Article;

public interface Articleservice {
	 public List<Article> getAllArticles();
	 
	 public Article getArticleById(long id);
	 
	 public void saveOrUpdate(Article article);
	 
	 public void deleteArticle(long id);
}
