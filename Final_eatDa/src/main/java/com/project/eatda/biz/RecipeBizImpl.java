package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.eatda.dao.RecipeDao;
import com.project.eatda.dto.RecipeDto;

public class RecipeBizImpl implements RecipeBiz{

	@Autowired
	private RecipeDao dao;
	@Override
	public List<RecipeDto> recipeList() {
		return dao.recipeList();
	}

	@Override
	public RecipeDto serchRecipe(String tag) {
		return null;
	}

	@Override
	public RecipeDto recommandRecipe(String category) {
		return null;
	}
	
	@Override
	public List<RecipeDto> recipeListHeart(String user_id) {
		return null;
	}
	
	@Override
	public int paging() {
		return 0;
	}

	

}
