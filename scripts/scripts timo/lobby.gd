extends Control

var escolhendo_mapa = 0
const MINIMO = 1
const MAXIMO = 10
var tempo = 0
const TEMPO_MAXIMO = 3
signal boom;
signal boom2;
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	escolhendo_mapa = randi_range(MINIMO,MAXIMO)

	
func _process(delta: float) -> void:
	tempo += delta
	if tempo >= TEMPO_MAXIMO:
		if escolhendo_mapa % 2 != 0:
			$africa.play("escolhido")
		else:
			$oceania.play("escolhido")
	if Globals.pepino == 3:
		pass
	elif Globals.pepino == 2:
		emit_signal("boom")
	elif Globals.pepino == 1:
		emit_signal("boom")
		emit_signal("boom2")

func _on_africa_animation_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/scences timo/Furação.tscn")


func _on_oceania_animation_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/bambi_correndo.tscn")
