extends KinematicBody2D

export(int) var level = 10
export(int) var cur_exp = 0
export(int) var next_exp = 10000
export(int) var cur_hp = 100
export(int) var max_hp = 100
export(int) var atk = 20
export(int) var def = 15

onready var SAVE_KEY : String = "char_" + name

func _physics_process(delta: float) -> void:
	var direction: Vector2
	
	if Input.is_action_pressed("ui_up"):
		direction += Vector2(0, -100)
	elif Input.is_action_pressed("ui_down"):
		direction += Vector2(0, 100)
	if Input.is_action_pressed("ui_left"):
		direction += Vector2(-100, 0)
	elif Input.is_action_pressed("ui_right"):
		direction += Vector2(100, 0)
	if Input.is_key_pressed(KEY_SHIFT):
		direction *= 2

	move_and_slide(direction)

func save(save_game: Resource):
	save_game.data[SAVE_KEY] = {
		"level": level,
		"cur_exp": cur_exp,
		"next_exp": next_exp,
		"cur_hp": cur_hp,
		"max_hp": max_hp,
		"atk": atk,
		"def": def,
		"location": global_transform
	}

func load(save_game: Resource):
	var data : Dictionary = save_game.data[SAVE_KEY]
	level = data["level"]
	cur_exp = data["cur_exp"]
	next_exp = data["next_exp"]
	cur_hp = data["cur_hp"]
	max_hp = data["max_hp"]
	atk = data["atk"]
	def = data["def"]
	global_transform = data["location"]
