extends Node2D


@onready var timer_level = $Timer

func _ready():
	$Timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/L_2.tscn")
