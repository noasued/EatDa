package com.project.eatda.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.eatda.dao.RecipeDao;
import com.project.eatda.dto.RecipeDto;
import com.project.eatda.dto.RecipePageBaseDto;

@Service
public class RecipeBizImpl implements RecipeBiz{

	@Autowired
	private RecipeDao dao;

	@Override
	public List<RecipeDto> recipeList() {
		return dao.recipeList();
	}

	@Override
	public RecipeDto recipeDetail(int recipe_no) {
		return dao.recipeDetail(recipe_no);
	}

	@Override
	public int recipeInsert(RecipeDto dto) {
		return dao.recipeInsert(dto);
	}

	@Override
	public int recipeUpdate(RecipeDto dto) {
		return dao.recipeUpdate(dto);
	}

	@Override
	public int recipeDelete(int recipe_no) {
		return dao.recipeDelete(recipe_no);
	}
	
	@Override
	public List<RecipeDto> recipeCategory(String recipe_category){
		
		return dao.recipeCategory(recipe_category);
	}

	@Override
	public int updateRecipeCount(int recipe_no) {
		
		return dao.recipeCount(recipe_no);
	}

	@Override
	public RecipeDto searchRecipe(String tag) {
		return dao.searchRecipe(tag);
	}

	@Override
	public RecipeDto recommandRecipe(String category) {
		return dao.recommandRecipe(category);
	}

	@Override
	public int paging() {
		return dao.paging();
	}

	@Override
	public List<RecipeDto> recipeTest(RecipePageBaseDto rpbdto) {
		return dao.recipeTest(rpbdto);
	}

	@Override
	public int getTotal(RecipePageBaseDto rpbdto) {
		return dao.getTotal(rpbdto);
	}

}
