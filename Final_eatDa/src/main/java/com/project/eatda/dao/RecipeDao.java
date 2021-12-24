package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.RecipeDto;


public interface RecipeDao {
	String NAMESPACE_RECIPE = "recipe.";
	
	public List<RecipeDto> recipeList();
	public RecipeDto serchRecipe(String tag);
	public RecipeDto recommandRecipe(String category);
	public List<RecipeDto> recipeListHeart(String user_id);
	public int paging();
}
