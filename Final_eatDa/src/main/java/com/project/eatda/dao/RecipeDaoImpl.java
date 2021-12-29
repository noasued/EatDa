package com.project.eatda.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.eatda.dto.RecipeDto;

@Repository
public class RecipeDaoImpl implements RecipeDao{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<RecipeDto> recipeList() {
		List<RecipeDto> rec_list = new ArrayList<RecipeDto>();
		
		try {
			rec_list = sqlSession.selectList(NAMESPACE_RECIPE+"recipeList");
		} catch (Exception e) {
			System.out.println("error : recipeList");
			e.printStackTrace();
		}
				
		return rec_list;
	}

	@Override
	public RecipeDto recipeDetail(int recipe_no) {
		RecipeDto dto = null;
		try {
			dto = sqlSession.selectOne(NAMESPACE_RECIPE+"recipeDetail", recipe_no);
		} catch (Exception e) {
			System.out.println("error : recipe detail");
			e.printStackTrace();
		}
		return dto;
	}

	@Override	
	public int recipeInsert(RecipeDto dto) {
		int res = 0;
		try {
			res=sqlSession.insert(NAMESPACE_RECIPE+"recipeInsert",dto);
		} catch (Exception e) {
			System.out.println("error : recipeinsert");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public int recipeUpdate(RecipeDto dto) {
		int res = 0;
		
		try {
			res = sqlSession.update(NAMESPACE_RECIPE+"recipeUpdate",dto);
		} catch (Exception e) {
			System.out.println("error : recipe update");
			e.printStackTrace();
		}
		
		return res;
	}

	@Override
	public int recipeDelete(int recipe_no) {
		
		int res = 0;
		
		try {
			res = sqlSession.delete(NAMESPACE_RECIPE+"recipeDelete",recipe_no);
		} catch (Exception e) {
			System.out.println("error : recipe delete");
			e.printStackTrace();
		}
		return res;
	}

	@Override
	public RecipeDto searchRecipe(String tag) {
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
