extends Area2D

func _physics_process(delta):
	position.y += 700 * delta

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_point()
	queue_free()
	
	
