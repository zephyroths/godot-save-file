extends Control

onready var game_saver: Node = $game_saver

func _on_btn_save_pressed():
	game_saver.save(1)

func _on_btn_load_pressed():
	game_saver.load(1)
