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
			System.out.println("¿¡·¯ : recipeList");
			e.printStackTrace();
		}
				
		return rec_list;
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
