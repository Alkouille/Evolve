extends StaticBody2D

onready var players = get_tree().get_nodes_in_group("hero")
onready var  player = players[0] # To get a Ref to the player


func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if body.actualGameplay.size() >= 4:
			player.actualGameplay += "Apple"
			queue_free()
		else:
			pass
