package org.nv.dom.web.service;

import java.util.Map;

import org.nv.dom.domain.speech.Speech;
import org.nv.dom.dto.assemble.DeleteSpeechDTO;

public interface AssembleService {
	
	public Map<String, Object> saveSpeech(Speech speech);
	
	public Map<String, Object> deleteSpeech(DeleteSpeechDTO	deleteSpeechDTO);

}
