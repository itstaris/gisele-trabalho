extends CharacterBody2D

const JUMP_VELOCITY = -1800.0
const GRAVITY = 4200

#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var dedada = false
func _on_touch_screen_button_pressed() -> void:
	dedada = true

func _physics_process(delta: float) -> void:
	$AnimatedSprite2D.play("Idle")
	# Add the gravity.
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor() or dedada == true and is_on_floor:
		velocity.y = JUMP_VELOCITY
	#elif is_on_floor() and dedada == true:
		#velocity.y = JUMP_VELOCITY

	move_and_slide()
