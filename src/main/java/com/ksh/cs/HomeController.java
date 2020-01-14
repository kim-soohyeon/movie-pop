package com.ksh.cs;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@RequestMapping(value = "/cs/test", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody String  getImage(Model model) {
		// Jsoup를 이용해서 웹 크롤링
		String url = "http://www.kobis.or.kr/kobis/business/main/searchMainDailyBoxOffice.do"; //크롤링할 url지정
		Document doc = null; //Document에는 페이지의 전체 소스가 저장된다
		String jsonText =null;
		try {
			doc = Jsoup.connect(url).get();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//select를 이용하여 원하는 태그를 선택한다. select는 원하는 값을 가져오기 위한 중요한 기능이다.
		Elements element = doc.select("body");    

		//Iterator을 사용하여 하나씩 값 가져오기
		Iterator<Element> ie1 = element.select("body").iterator();
		String text=ie1.next().text();
		String Arr[]=text.split("\\{");
		//String[] dataArr = new String[10];
		List<String> list = new ArrayList<String>();
		
		for(int i=1;i<Arr.length;i++) {
			String data=Arr[i];
			data=data.substring(data.indexOf("thumbUrl"),data.indexOf("movieNm")-3).replaceAll("thumbUrl\"[:]\"", "");
			data=data.replaceAll("thumb/thn_", "");
			//data=data.replaceAll("thumb/thn_", "thumb_x192/thn_");//작은이미지
			//dataArr[i-1]="http://www.kobis.or.kr"+data;
			list.add("http://www.kobis.or.kr"+data);
			//dataArr[i-1]="http://www.kobis.or.kr/kobis/business/mast/mvie/popupImg.do?imgURL="+data;//큰이미지
		};
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			jsonText = mapper.writeValueAsString(list);
			model.addAttribute("json", jsonText);
	    } catch (JsonProcessingException e) {
	        //log.error("JsonProcessingException while converting Entity into string", e);
	    }
		return jsonText;
	}
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		
		
		return "home";
	}
	
	
	 @RequestMapping(value = "/{var}", method = RequestMethod.GET) 
	 public String base(@PathVariable String var) { 
		 return var; 
	 }

	
}
