extends Node


var score = 1


func add_point():
	score += 1

func _ready():
	var timer = Timer.new()
	timer.wait_time = 1.7
	add_child(timer)
	timer.start()
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	randomize()
	var duner = preload("res://scenes/duner.tscn").instantiate()
	duner.position.y = -324 #Replace it by the top position of screen
	duner.position.x = randf_range(-576, 576) #replace by start and end of screensize
	add_child(duner)
