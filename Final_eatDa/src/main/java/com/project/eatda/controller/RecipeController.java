package com.project.eatda.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.eatda.biz.RecipeBiz;
import com.project.eatda.dto.RecipeDto;

@Controller
public class RecipeController {
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@Autowired
	private RecipeBiz biz;
	
	@RequestMapping("/recipeList.do")
	public String recipeList(Model model) {
		logger.info("RECIPE LIST");
		
		model.addAttribute("list", biz.recipeList());
		
		return "/recipe/recipeList";
	}
	
	@RequestMapping("/recipeListTest.do")
	public String recipeListTest(Model model,String searchType, String keyword) {
		logger.info("RECIPE SEARCH LIST");
		
		model.addAttribute("list", biz.recipeListTest(searchType, keyword));
		
		return "/recipe/recipeList";
	}
	
	@RequestMapping("/recipeCategory.do")
	public String recipeCategory(Model model, String recipe_category) {
		logger.info("RECIPE CATEGORY");
		
		model.addAttribute("list", biz.recipeCategory(recipe_category));
		
		return "/recipe/recipeList";
	}
	
	@RequestMapping("/test2.do")
	public String test2() {
		logger.info("test222");
	
		return "/recipe/test2";
	}

	@RequestMapping("/recipeDetail.do")
	public String recipeDetail(Model model, int recipe_no) {
		logger.info("RECIPE DETAIL");
		
		model.addAttribute("dto", biz.recipeDetail(recipe_no));
		
		//조회수 +1
		biz.updateRecipeCount(recipe_no);
		return "/recipe/recipeDetail";
	}

	@RequestMapping("/recipeInsert.do")
	public String recipeInsert() {
		logger.info("RECIPE INSERT");
		
		return "/recipe/recipeInsert";
	}
	
	//서머노트 test
	@RequestMapping("/test.do")
	public String test() {
		logger.info("TETST");
		
		return "/recipe/test";
	}
	
	@RequestMapping("/recipeInsertRes.do")
	public String recipeInsertRes(RecipeDto dto) {
		logger.info("RECIPE INSERT RESULT");

		int res = biz.recipeInsert(dto);
		
		if(res>0){			
			return "redirect:recipeList.do";
		}else {
			return "redirect:recipeInsert.do";
		}
	}
	
	@RequestMapping("/recipeUpdateForm.do")
	public String recipeUpdateForm(Model model, int recipe_no) {
		logger.info("RECIPE UPDATE FORM");
		
		model.addAttribute("dto",biz.recipeDetail(recipe_no));
		return "/recipe/recipeUpdateForm";
	}
	
	@RequestMapping("/recipeupdateRes.do")
	public String recipeUpdateRes(RecipeDto dto) {
		logger.info("RECIPE UPDATE RESULT");
		
		int res = biz.recipeUpdate(dto);
		if(res>0) {
			return "redirect:recipeDetail.do?recipe_no="+dto.getRecipe_no();
		}else {
			return "redirect:recipeUpdateForm.do?recipe_no="+dto.getRecipe_no();			
		}
	}
	
	@RequestMapping("/deleteConfirm.do")
	public String deleteConfirm(int recipe_no) {
		logger.info("RECIPE DELETE CONFIRM");
		
		return "recipe/deleteConfirm";
	}
	@RequestMapping("/recipeDelete.do")
	public String recipeDelete(int recipe_no) {
		logger.info("RECIPE DELETE");
		
		int res = biz.recipeDelete(recipe_no);
		if(res>0) {
			return "redirect:recipeList.do";
		}else {
			return "redirect:recipeDetail.do?recipe_no="+recipe_no;
		}
	}

//	@RequestMapping(value="/uploadSummernoteImageFile", produces = "application/json; charset=utf8")
//	@ResponseBody
//	public String uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request )  {
//		JsonObject jsonObject = new JsonObject();
//		
//        /*
//		 * String fileRoot = "C:\\summernote_image\\"; // 외부경로로 저장을 희망할때.
//		 */
//		
//		// 내부경로로 저장
//		String contextRoot = new HttpServletRequestWrapper(request).getRealPath("/");
//		String fileRoot = contextRoot+"resources/images/recipe/";
//		
//		String originalFileName = multipartFile.getOriginalFilename();	//원본 파일명
//		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
//		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
//		
//		File targetFile = new File(fileRoot + savedFileName);	
//		try {
//			InputStream fileStream = multipartFile.getInputStream();
//			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
//			jsonObject.addProperty("url", "/summernote/resources/fileupload/"+savedFileName); // contextroot + resources + 저장할 내부 폴더명
//			jsonObject.addProperty("responseCode", "success");
//				
//		} catch (IOException e) {
//			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
//			jsonObject.addProperty("responseCode", "error");
//			e.printStackTrace();
//		}
//		String a = jsonObject.toString();
//		return a;
//	}


}
