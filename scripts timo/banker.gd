extends Area2D

@export var lv_banker = 2
@export var pessoas = 0

func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	if lv_banker == pessoas:
		get_tree().change_scene_to_file("res://scences timo/genhouuuu.tscn")
		


func _on_area_entered(area: Area2D) -> void:
	pessoas += 1
