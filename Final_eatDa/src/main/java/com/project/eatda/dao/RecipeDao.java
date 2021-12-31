package com.project.eatda.dao;

import java.util.List;

import com.project.eatda.dto.RecipeDto;


public interface RecipeDao {
	String NAMESPACE_RECIPE = "recipe.";
	
	public List<RecipeDto> recipeList(); //레시피메인			
	public RecipeDto recipeDetail(int recipe_no); 					
	public int recipeInsert(RecipeDto dto); 							
	public int recipeUpdate(RecipeDto dto);							
	public int recipeDelete(int recipe_no); 
	
	public List<RecipeDto> recipeCategory(String recipe_category); //레시피 카테고리 클릭 시 
	public List<RecipeDto> recipeListTest(String searchType, String keyword);
	public int recipeCount(int recipe_no);
	public RecipeDto searchRecipe(String tag); 			
	public RecipeDto recommandRecipe(String category); 	
	public int paging();
}
