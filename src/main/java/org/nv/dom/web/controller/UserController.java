package org.nv.dom.web.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.nv.dom.domain.chat.ChatDetail;
import org.nv.dom.domain.chat.ChatInfo;
import org.nv.dom.domain.settlement.Settlement;
import org.nv.dom.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/getConnectionInfo", method = RequestMethod.POST)
	public Map<String, Object> getConnectionInfo(@ModelAttribute("chatInfo") ChatInfo chatInfo, HttpSession session) {
		return userService.getConnectionInfo(chatInfo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public Map<String, Object> sendMessage(@ModelAttribute("chatDetail") ChatDetail chatDetail, HttpSession session) {
		return userService.sendMessage(chatDetail);
	}
	
	@ResponseBody
	@RequestMapping(value = "/onlineSettlement", method = RequestMethod.POST)
	public Map<String, Object> onlineSettlement(@ModelAttribute("settlement") Settlement settlement, HttpSession session){
		return userService.sendOnlineSettlement(settlement);
	}
}
