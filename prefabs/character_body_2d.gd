extends CharacterBody2D

const PLAYER_START_POS := Vector2i(2078, 492)
const MIN_SPEED : float = 10.0
const MAX_SPEED : float = 25.0

var speed : float
var dedada = false
var play : bool

@onready var animacao = $AnimatedSprite2D

func _ready() -> void:
	new_game()
	play = false

func new_game():
	position = PLAYER_START_POS
	velocity = Vector2i(0, 0)
	animacao.play("inicio")
	speed = MIN_SPEED
func _on_touch_screen_button_pressed() -> void:
	dedada = true

func ajuste_velocidade():
	print("ta funfando")
	if speed <= MAX_SPEED:
		speed +=3

func _physics_process(delta: float) -> void:
	if speed >= MIN_SPEED:
		speed = lerp(speed, MIN_SPEED, delta)
	if play:
		if Input.is_action_just_pressed("ui_accept"):
			ajuste_velocidade()
		position.x += speed
		move_and_slide()
	

func anim_morte():
	animacao.play("morte")
	print("animação dor")
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor() or dedada == true and is_on_floor:
	

func _on_animated_sprite_2d_animation_finished(anim:String=$AnimatedSprite2D.animation) -> void:
	if anim=="inicio":
		play = true
		$"..".comecar()
		animacao.play("Idle")
	if anim=="morte":
		print("é pra da restart")
		get_tree().change_scene_to_file("res://scenes/main.tscn")
	


func _on_button_pressed() -> void:
	ajuste_velocidade()
