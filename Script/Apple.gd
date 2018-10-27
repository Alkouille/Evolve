extends StaticBody2D

var textCount = 0
func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Area2D_body_entered(body):
	textCount = 0
	if body.is_in_group("player"):
		if body.actualGameplay.size() >= 4:
			body.actualGameplay.push_back("Talk")
			queue_free()
		else:
			$Text.set_text("Hi,  i'm Cherry the Apple ! ")
			$Timer.start()
			$Timer.set_wait_time(1)


    

func _on_Timer_timeout():
	if textCount == 0:
		$Text.set_text("Hi ?")
