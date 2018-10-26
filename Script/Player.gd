extends KinematicBody2D

var actualGameplay = ["moveright", "moveleft"]
var finalGamePlay = ["moveright", "moveLeft", "moveUpAndDown", "Talk"]

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	input()

func input():
	if actualGameplay.size() >= 1:
		MoveRight()
	
	if actualGameplay.size() >= 2:
		MoveLeft()

func MoveRight():
	if Input.is_action_pressed("WalkRight"):
			move_and_slide(Vector2(150, 0))

func MoveLeft():
	if Input.is_action_pressed("WalkLeft"):
		move_and_slide(Vector2(-150, 0))