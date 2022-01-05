package com.project.eatda.common.interceptor;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor {
	
	private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	public String[] permitCommand = {
			"/index.do", "/idCheck.do","/regist_form.do","/emailCheck.do","/memberRegist.do","/loginCheck.do",
			"/foodbti.do","/getMarketData.do","/getRecentRecipe.do","/getMbtiProduct.do","/getPopularBlog.do","/getLovingRecipe.do",
			"/product.do","/paging.do","/hashTagSearch.do","/searching.do","/goProductPage.do","/marketMain.do","/getReview.do",
			"/takeBlog.do","/blog-paging.do","/blog.do","/blog-search.do","/blog-detail.do","reply-list.do","/event.do","/event-detail.do",
			"/recipeList.do","/recipeListTest.do","/recipeCategory.do","/recipeDetail.do"
	};
	
	//함부러 요청이 넘어가지 않도록
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//boolean 으로 컨트롤러로 요청을 넣을지 안넣을지 false : 반환 true : 정상처리
		logger.info("[interceptor.preHandler] request :"+request.getRequestURI());
		
		if (request.getSession().getAttribute("member") != null) {
			return true;
		} 
		
		for (String str : permitCommand) {
			if (request.getRequestURI().contains(str)) {
				return true;
			}
		}
		
		if (request.getSession().getAttribute("member") == null) {
			jsResponse("index.do","Please Log in!", response);
			//response.sendRedirect("index.do");
		}
		return false;
		
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		logger.info("[interceptor]: postHandle");
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.info("[interceptor]: afterCompletion");
	}
	
	public void jsResponse(String url, String message, HttpServletResponse response) throws IOException {
		String script = "<script type='text/javascript'> " + "alert('" + message + "'); " + "location.href = '" + url
				+ "';" + "</script>";
		PrintWriter writer = response.getWriter();
		writer.print(script);
	}

}
