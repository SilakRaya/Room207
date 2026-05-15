extends CharacterBody2D

var speed = 200

func _ready() -> void:
	%Node2D.visible = false

func _physics_process(delta):
	var direction = Input.get_axis("ui_left", "ui_right")
	
	velocity.x = direction * speed
	velocity.y = 0
	
	move_and_slide()
	
	if direction != 0:
		print("Moving! Direction: ", direction, " Position: ", position)


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	%Node2D.visible = true


func _on_area_2d_body_exited(body: CharacterBody2D) -> void:
	%Node2D.visible = false
