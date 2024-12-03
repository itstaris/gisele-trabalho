extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$AnimatedSprite2D.play("Idle")


func _on_body_entered(body: Node2D) -> void:
	if body.name == "CharacterBody2D":
		#$"../../CharacterBody2D".queue_free()
		body.anim_morte()
