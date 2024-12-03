extends Area2D

func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
			Globals.pontitos += 1
			get_tree().change_scene_to_file("res://scenes/scences timo/genhouuuu.tscn")
		
