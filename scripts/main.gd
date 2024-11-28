extends Node

var speed : float
const PLAYER_START_POS := Vector2i(2078, 492)
const START_SPEED : float = 14.0
const CAM_START_POS := Vector2i(1266, 585)
#const FIRE_START_POS := Vector2i(-626, 0)

func _ready() -> void:
	new_game()

func new_game():
	$CharacterBody2D.position = PLAYER_START_POS
	$CharacterBody2D.velocity = Vector2i(0, 0)
	$Camera2D.position = CAM_START_POS
	$ground.position = Vector2i(0, 0)
	#$fogo.position = FIRE_START_POS

func _process(delta: float) -> void:
	speed = START_SPEED
	
	$CharacterBody2D.position.x += speed
	$Camera2D.position.x += speed + 2
	#$fogo.position.x += speed + 2
