extends Node2D

const GRASS_EFFECT = preload("res://effects/grass_effect.tscn")

@export var area_2d: Area2D


func _ready() -> void:
	area_2d.area_entered.connect(_on_area_2d_area_entered)

func _on_area_2d_area_entered(other_area_2d: Area2D) -> void:
	var grass_effect = GRASS_EFFECT.instantiate()
	get_tree().current_scene.add_child(grass_effect)
	grass_effect.global_position = global_position
	queue_free()
