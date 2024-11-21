extends Node2D

@onready var trans = $testtransition/AnimationPlayer

func _ready() -> void:
	trans.play("fadeout")
	
