extends Viewport

@export var Input_key : Label
@export var Prompt : Label

func Set_Input(key : String):
	Input_key.text = key
	
func Set_Prompt(message : String):
	Prompt.text = message
