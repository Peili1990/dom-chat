package org.nv.dom.web.dao.assemble;

import org.nv.dom.domain.player.SubmitOpreationDTO;
import org.nv.dom.domain.speech.Speech;
import org.nv.dom.dto.assemble.DeleteSpeechDTO;
import org.springframework.stereotype.Repository;

@Repository
public interface AssembleMapper {
	
	public Integer getNewspaperStatus(long newspaperId);
	
	public int saveSpeech(Speech speech);
	
	public int deleteSpeech(DeleteSpeechDTO deleteSpeechDTO);

	public int submitOpreationDao(SubmitOpreationDTO submitOpreationDTO);
	
}
