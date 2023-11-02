class_name InteractionSystem extends Node


@export var Ray : RayCast3D

func _process(delta):
	if Input.is_action_just_pressed("e_key") and Ray.is_colliding():
		var object = Ray.get_collider()
		if object.is_in_group("Interactable"):
			object.Interact()
			
