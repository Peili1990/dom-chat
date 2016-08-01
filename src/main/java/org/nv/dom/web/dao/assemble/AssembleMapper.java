package org.nv.dom.web.dao.assemble;

import org.nv.dom.domain.speech.Speech;
import org.springframework.stereotype.Repository;

@Repository
public interface AssembleMapper {
	
	public int saveSpeech(Speech speech);
	
}
