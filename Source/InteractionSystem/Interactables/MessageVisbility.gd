extends Area3D

@export var InteractionLabel : Sprite3D

func _on_body_entered(body):
	if body is Player:
		InteractionLabel.visible = true
		


func _on_body_exited(body):
	if body is Player:
		InteractionLabel.visible = false

