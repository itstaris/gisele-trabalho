extends Node2D


func _on_timer_timeout() -> void:
	#Globals.pepino -= 1
	get_tree().change_scene_to_file("res://scenes/scences timo/lobby.tscn")
	
