extends Area2D


func _physics_process(delta):
	position.y += 700 * delta

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_point()
	var sound = $eating_sound  # Get reference to the sound node
	remove_child(sound)  # Detach from current node
	get_tree().current_scene.add_child(sound)  # Reparent to the main scene
	sound.play()  # Play the sound
	queue_free()  # Remove the object immediately
	 
