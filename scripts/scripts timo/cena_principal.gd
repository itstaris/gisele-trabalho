extends Node2D


func _on_timer_bar_acabouuuu() -> void:
	Globals.pepino -=1
	if Globals.pepino == 0:
		get_tree().change_scene_to_file("res://scenes/scences timo/voce_perdeu.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/scences timo/voce_ja_era.tscn")
