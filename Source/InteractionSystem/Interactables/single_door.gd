extends Area3D

@onready var AniTree = get_node("AnimationTree")
var State : bool = false
var playback = null

func _ready():
	playback = AniTree.get("parameters/playback")

func Toggle_Door():
	State = !State
	if State:
		playback.travel("Open")
	else:
		playback.travel("Close")
	
func Interact():
	print("Door Interacted!")
	Toggle_Door()
