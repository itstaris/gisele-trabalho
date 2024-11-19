extends Control

var escolhendo_mapa = 0
const MINIMO = 1
const MAXIMO = 10
var tempo = 0
const TEMPO_MAXIMO = 3

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	escolhendo_mapa = randi_range(MINIMO,MAXIMO)
	
func _process(delta: float) -> void:
	tempo += delta
	if tempo >= TEMPO_MAXIMO:
		if escolhendo_mapa % 2 != 0:
			$"america do norte".play("escolhido")
		else:
			$russia.play("escolhido")


func _on_america_do_norte_animation_finished() -> void:
	get_tree().change_scene_to_file("res://scences timo/cena_principal.tscn")


func _on_russia_animation_finished() -> void:
	get_tree().change_scene_to_file("res://scences timo/genhouuuu.tscn")
