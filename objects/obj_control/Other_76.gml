/// @description Deal with sequences

// Listen for broacast messages
switch (event_data[? "message"]) {
	case "sequenceStart": {
		// Set our state
		sequenceState = seqState.playing;
		// Find out which sequence just broadcast this message and mark it
		if (layer_get_element_type(event_data[? "element_id"]) == layerelementtype_sequence) {
			curSeq = event_data[? "element_id"];
		}
	}; break;
	case "sequenceEnd": {
		// Set our state
		sequenceState = seqState.finished;
		}; break;
}