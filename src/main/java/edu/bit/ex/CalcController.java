package edu.bit.ex;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import edu.bit.ex.calcVO.CalcVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CalcController {

	private static final Logger logger = LoggerFactory.getLogger(CalcController.class);

	
	@RequestMapping("/score")
	public String home() {
		logger.info("score");
		return "score";
	}
	@ResponseBody
	@RequestMapping("/getTotal")
	public double result(CalcVO calcvo,Model model) {
		logger.info("calcvo :"+calcvo);
		logger.info("model : "+model);
		logger.info("calcvo KOR:"+calcvo.getKor());
		logger.info("calcvo ENG:"+calcvo.getEng());
		logger.info("calcvo MATH:"+calcvo.getMath());
		logger.info("calcvo Total:"+calcvo.getTotal());
		logger.info("getTotal");
		
		
		return calcvo.getTotal();
	}
}