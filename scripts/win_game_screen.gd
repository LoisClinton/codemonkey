class_name WinScreen extends MainMenu

func _ready() -> void:
	exit_btn.pressed.connect(_on_exit_button_pressed)
