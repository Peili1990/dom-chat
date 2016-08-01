package org.nv.dom.web.service;

import java.util.Map;

import org.nv.dom.domain.speech.Speech;

public interface AssembleService {
	
	public Map<String, Object> saveSpeech(Speech speech);

}
