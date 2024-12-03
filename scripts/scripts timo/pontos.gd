extends Control

@onready var score := $numeros as Label


func _process(delta: float) -> void:
	score.text = str(Globals.pontitos)
