extends Line2D

signal acabouuuu;

func decrease():
	points[1].x -=80;
	
func time_over():
	return points[1].x <=0;

func _on_timer_timeout() -> void:
	decrease()
	if time_over():
		emit_signal("acabouuuu");
