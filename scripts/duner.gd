extends Area2D

@onready var sound = $AudioStreamPlayer2D

func _physics_process(delta):
	position.y += 700 * delta

func _on_body_entered(body: Node2D) -> void:
	GameManager.add_point()
	GameManager.playsound()
	queue_free()  # Remove item after pickup
	
 
