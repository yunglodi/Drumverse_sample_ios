extends Control

#use the texture buttons inside the vboxcontainer
@onready var module1_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson1
@onready var module2_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson2
@onready var module3_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson3
@onready var module4_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson4
@onready var module5_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson5
@onready var module6_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson6
@onready var module7_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson7
@onready var module8_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson8
@onready var module9_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson9
@onready var module10_button: TextureButton = $ScrollContainer/VBoxContainer/Lesson10

func _ready() -> void:
	module1_button.pressed.connect(_on_module1_button_pressed)
	module2_button.pressed.connect(_on_module2_button_pressed)   # <--- new
	module3_button.pressed.connect(_on_module3_button_pressed) #for future modules
	module4_button.pressed.connect(_on_module4_button_pressed)
	module5_button.pressed.connect(_on_module5_button_pressed)
	module6_button.pressed.connect(_on_module6_button_pressed)
	module7_button.pressed.connect(_on_module7_button_pressed)
	module8_button.pressed.connect(_on_module8_button_pressed)
	module9_button.pressed.connect(_on_module9_button_pressed)
	module10_button.pressed.connect(_on_module10_button_pressed)
	
	print("GameState is loaded: ", GameState)

func _on_module1_button_pressed() -> void:
	GameState.lessons = 1
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	
	print("Loading Module1.tres and Module1_Learning.tres...")

	var module_resource = load("res://Module/Lesson1/Module1.tres")
	var learning_resource = load("res://Module/Lesson1/Module1_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")


func _on_module2_button_pressed() -> void:
	GameState.lessons = 2
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	
	print("Loading Module2.tres and Module2_Learning.tres...")

	var module_resource = load("res://Module/Lesson2/Module2.tres")
	var learning_resource = load("res://Module/Lesson2/Module2_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
		
func _on_module3_button_pressed() -> void:
	GameState.lessons = 3
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	
	print("Loading Module3.tres and Module3_Learning.tres...")

	var module_resource = load("res://Module/Lesson3/Module3.tres")
	var learning_resource = load("res://Module/Lesson3/Module3_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
	
func _on_module4_button_pressed() -> void:
	GameState.lessons = 4
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	
	print("Loading Module4.tres and Module4_Learning.tres...")

	var module_resource = load("res://Module/Lesson4/Module4.tres")
	var learning_resource = load("res://Module/Lesson4/Module4_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
		
func _on_module5_button_pressed() -> void:
	GameState.lessons = 5
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module5.tres and Module5_Learning.tres...")

	var module_resource = load("res://Module/Lesson5/Module5.tres")
	var learning_resource = load("res://Module/Lesson5/Module5_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
		
func _on_module6_button_pressed() -> void:
	GameState.lessons = 6
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module6.tres and Module6_Learning.tres...")

	var module_resource = load("res://Module/Lesson6/Module6.tres")
	var learning_resource = load("res://Module/Lesson6/Module6_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
		
func _on_module7_button_pressed() -> void:
	GameState.lessons = 7
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module7.tres and Module7_Learning.tres...")

	var module_resource = load("res://Module/Lesson7/Module7.tres")
	var learning_resource = load("res://Module/Lesson7/Module7_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
	
func _on_module8_button_pressed() -> void:
	GameState.lessons = 8
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module8.tres and Module8_Learning.tres...")

	var module_resource = load("res://Module/Lesson8/Module8.tres")
	var learning_resource = load("res://Module/Lesson8/Module8_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
	
func _on_module9_button_pressed() -> void:
	GameState.lessons = 9
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module9.tres and Module9_Learning.tres...")

	var module_resource = load("res://Module/Lesson9/Module9.tres")
	var learning_resource = load("res://Module/Lesson9/Module9_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")
	
func _on_module10_button_pressed() -> void:
	GameState.lessons = 10
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	print("Loading Module10.tres and Module10_Learning.tres...")

	var module_resource = load("res://Module/Lesson10/Module10.tres")
	var learning_resource = load("res://Module/Lesson10/Module10_Learning.tres")
	
	if module_resource and learning_resource:
		print("✅ Both module and learning module loaded.")
		GameState.selected_module = module_resource
		GameState.selected_learning_module = learning_resource  # ✅ store learning version too
		call_deferred("_goto_sample_scene")
	else:
		push_error("❌ Failed to load module or learning module!")

func _goto_sample_scene() -> void:
	var sample_scene = load("res://Sample/sample_scene.tscn").instantiate()
	get_tree().current_scene.queue_free()
	get_tree().root.add_child(sample_scene)
	get_tree().current_scene = sample_scene
	
func _on_back_pressed() -> void:
	$ClickSoundPlayer.play()
	await get_tree().create_timer(0.2).timeout
	#go back to main menu
	get_tree().change_scene_to_file("res://Menu Scenes/main_menu.tscn")
