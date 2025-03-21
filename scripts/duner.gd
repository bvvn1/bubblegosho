extends Area2D

@onready var game_manager = %GameManager

func _physics_process(delta):
	position.y += 700 * delta

func _on_body_entered(body: Node2D) -> void:
	game_manager.add_point()
	queue_free()
	
