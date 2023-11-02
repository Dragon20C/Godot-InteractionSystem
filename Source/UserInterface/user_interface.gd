extends Control

@export var Dot_Size : float = 2.0
@export var Dot_Colour : Color = Color.WHITE
@export var InteractionViewport : SubViewport

var Screen_Size : Vector2 = Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready():
	Set_InteractionLabel()
	Screen_Size = get_viewport_rect().size
	queue_redraw()


func _draw():
	draw_circle(Screen_Size/2.0,Dot_Size,Dot_Colour)

func Set_InteractionLabel():
	for MessageLabel in get_tree().get_nodes_in_group('3DInteractableMessage'):
		var texture = InteractionViewport.get_texture()
		MessageLabel.texture = texture

