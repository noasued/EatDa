package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.RecipeDto;


public interface RecipeDao {
	String NAMESPACE_RECIPE = "recipe.";
	
	public List<RecipeDto> recipeList();			
	public RecipeDto recipeDetail(int recipe_no); 					
	public int recipeInsert(RecipeDto dto); 							
	public int recipeUpdate(RecipeDto dto);							
	public int recipeDelete(int recipe_no); 							
	public RecipeDto searchRecipe(String tag); 			
	public RecipeDto recommandRecipe(String category); 	
	public List<RecipeDto> recipeListHeart(String user_id); 
	public int paging();
}
