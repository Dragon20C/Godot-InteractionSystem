extends Node3D

@onready var Animations = get_node("AnimationTree")
var playback = null
var door_state : bool = false
# Called when the node enters the scene tree for the first time.
func _ready():
	playback = Animations.get("parameters/playback")

func toggle_door():
	door_state = !door_state
	
	if door_state:
		playback.travel("Open")
	else:
		playback.travel("Close")
