extends Node2D



var count = 0

func _ready():
	$Intro.set_text("You are an orange, ")
	$Timer.start()





func _on_Timer_timeout():
	if count == 0:
		$Intro.set_text("You can only go the right :( ")
	if count == 1: 
		$Intro.set_text("There are a gift for you")
	if count == 2:
		$Intro.set_text("Yes, it's ugly")
	if count == 3:
		$Intro.set_text("Now go")
	if count == 4:
		$Intro.set_text("You have four seconds to go")
	if count == 5:
		get_tree().change_scene("res://Scene/GameOver.tscn")
	count += 1
	$Timer.stop()
	$Timer.start()

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if has_node("Timer"):
			$Timer.queue_free()
