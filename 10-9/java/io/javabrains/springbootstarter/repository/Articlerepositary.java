package io.javabrains.springbootstarter.repository;

import org.springframework.data.repository.CrudRepository;

import io.javabrains.springbootstarter.model.Article;

public interface Articlerepositary  extends CrudRepository<Article, Long> {


}
