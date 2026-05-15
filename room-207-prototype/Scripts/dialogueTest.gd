extends Node

# Called when the node enters the scene tree for the first time.
func _on_area_2d_area_entered(area: Area2D) -> void:
	%Node2D.visible = true


func _on_area_2d_area_exited(area: Area2D) -> void:
	%Node2D.visible = false
