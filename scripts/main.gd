extends Node

var speed : float
var play : bool
#const PLAYER_START_POS := Vector2i(2078, 492)
const START_SPEED : float = 14.0
const CAM_START_POS := Vector2i(1266, 585)
var vive : bool


func _ready() -> void:
	new_game()
	play = false
func new_game():
	#$CharacterBody2D.position = PLAYER_START_POS
	#$CharacterBody2D.velocity = Vector2i(0, 0)
	$Camera2D.position = CAM_START_POS
	$ground.position = Vector2i(0, 0)

func comecar():
	play = true
	
func _process(delta: float) -> void:
	speed = START_SPEED
	if play:
		$Camera2D.position.x += speed + 10


#func _on_timer_bar_acabouuuu() -> void:

func _on_tempe_2_roi() -> void:
	Globals.pontitos += 1
	get_tree().change_scene_to_file("res://scenes/scences timo/genhouuuu.tscn")
