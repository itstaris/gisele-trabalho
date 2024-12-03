extends Line2D


signal roi;

func decrease2():
	points[1].x -=80;
	
func time_over2():
	return points[1].x <=0;

func _on_timer_timeout() -> void:
	decrease2()
	if time_over2():
		emit_signal("roi");
