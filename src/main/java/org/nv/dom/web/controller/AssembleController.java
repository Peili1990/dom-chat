package org.nv.dom.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.nv.dom.domain.speech.Speech;
import org.nv.dom.web.service.AssembleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AssembleController {
	
	@Autowired
	AssembleService assembleService;
	
	@ResponseBody
	@RequestMapping(value = "/sumbitSpeech", method = RequestMethod.POST)
	public Map<String, Object> sumbitSpeech(@ModelAttribute("speech") Speech speech, HttpSession session) {
		return assembleService.saveSpeech(speech);
	}
	
	

}
