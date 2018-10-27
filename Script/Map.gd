extends Node2D

# class member variables go here, for example:
# var a = 2
var count = 0

func _ready():
	$Intro.set_text("You are an orange")
	$Timer.start()





func _on_Timer_timeout():
	if count == 0:
		$Intro.set_text("dsqd")
	if count == 1: 
		$Intro.set_text("dsqdsqd")
	count += 1
	$Timer.stop()
	$Timer.start()