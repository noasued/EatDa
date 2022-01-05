package com.project.eatda.biz;

import java.util.List;

import com.project.eatda.dto.RecipeDto;
import com.project.eatda.dto.RecipePageBaseDto;


public interface RecipeBiz {
	
	public List<RecipeDto> recipeList();				
	public RecipeDto recipeDetail(int recipe_no); 		
	public int recipeInsert(RecipeDto dto); 			
	public int recipeUpdate(RecipeDto dto);				
	public int recipeDelete(int recipe_no); 	
	
	public List<RecipeDto> recipeCategory(String recipe_category);
	public int updateRecipeCount(int recipe_no);
	public RecipeDto searchRecipe(String tag); 			
	public RecipeDto recommandRecipe(String category); 	
	public int paging();	
	
	public List<RecipeDto> recipeTest(RecipePageBaseDto rpbdto);
	public int getTotal(RecipePageBaseDto rpbdto);
	
	/* admin Recipe delete */
	public int adminRecipeDelete(int parseInt);
	
}
