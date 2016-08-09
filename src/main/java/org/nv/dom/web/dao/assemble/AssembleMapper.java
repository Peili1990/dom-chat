package org.nv.dom.web.dao.assemble;

import org.nv.dom.domain.speech.Speech;
import org.nv.dom.dto.assemble.DeleteSpeechDTO;
import org.springframework.stereotype.Repository;

@Repository
public interface AssembleMapper {
	
	public int saveSpeech(Speech speech);
	
	public int deleteSpeech(DeleteSpeechDTO deleteSpeechDTO);
	
}
