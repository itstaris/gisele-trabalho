extends Node

var speed : float
const PLAYER_START_POS := Vector2i(467, 968)
const START_SPEED : float = 14.0
const CAM_START_POS := Vector2i(1266, 585)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	new_game()

func new_game():
	$CharacterBody2D.position = PLAYER_START_POS
	$CharacterBody2D.velocity = Vector2i(0, 0)
	$Camera2D.position = CAM_START_POS
	$ground.position = Vector2i(0, 0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	speed = START_SPEED
	
	$CharacterBody2D.position.x += speed
	$Camera2D.position.x += speed
