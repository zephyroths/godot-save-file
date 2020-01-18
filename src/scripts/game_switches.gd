extends Node

export(bool) var event_1
export(bool) var event_2
export(bool) var event_3
export(bool) var event_4
export(bool) var event_5
export(bool) var event_6
export(bool) var event_7
export(bool) var event_8
export(bool) var event_9
export(bool) var event_10

onready var SAVE_KEY : String = "game_" + name

func save(save_game: Resource):
	save_game.data[SAVE_KEY] = {
		"event1": event_1,
		"event2": event_2,
		"event3": event_3,
		"event4": event_4,
		"event5": event_5,
		"event6": event_6,
		"event7": event_7,
		"event8": event_8,
		"event9": event_9,
		"event10": event_10
	}

func load(save_game: Resource):
	var data : Dictionary = save_game.data[SAVE_KEY]
	event_1 = data["event1"]
	event_2 = data["event2"]
	event_3 = data["event3"]
	event_4 = data["event4"]
	event_5 = data["event5"]
	event_6 = data["event6"]
	event_7 = data["event7"]
	event_8 = data["event8"]
	event_9 = data["event9"]
	event_10 = data["event10"]
	
