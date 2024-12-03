extends Area2D

@export var lv_banker = 3
@export var pessoas = 0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	if lv_banker == pessoas:
		Globals.pontitos += 1
		get_tree().change_scene_to_file("res://scenes/scences timo/genhouuuu.tscn")
		
func _on_area_entered(area: Area2D) -> void:
	pessoas += 1
