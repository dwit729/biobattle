extends Control

@onready var trans = $testtransition/AnimationPlayer
@onready var transpage = $testtransition
@onready var logo = $logoanim/AnimationPlayer

func _ready() -> void:
	transpage.hide()
	logo.play("logoanim")
	
func _on_button_pressed() -> void:
	transpage.show()
	trans.play("fadein")
	await get_tree().create_timer(0.5).timeout
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
