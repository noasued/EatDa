package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.RecipeDto;


public interface RecipeBiz {
	
	public List<RecipeDto> recipeList();				
	public RecipeDto recipeDetail(int recipe_no); 		
	public int recipeInsert(RecipeDto dto); 			
	public int recipeUpdate(RecipeDto dto);				
	public int recipeDelete(int recipe_no); 	
	
	public List<RecipeDto> recipeCategory(String recipe_category);
	public List<RecipeDto> recipeListTest(String searchType, String keyword); //검색테스트
	public int updateRecipeCount(int recipe_no);
	public RecipeDto searchRecipe(String tag); 			
	public RecipeDto recommandRecipe(String category); 	

  public List<RecipeDto> recipeListHeart(String user_id); 
	public int paging();	
	
}
