extends Area3D

signal Action

@onready var Animations = get_node("AnimationPlayer")

func Interact():
	Animations.play("Press")
	emit_signal("Action")
