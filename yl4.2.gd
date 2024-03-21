#Kristjan Mustkivi 21.03
extends Node2D


func _ready():
	
var player = {"posx":100, "posy":38, "health":16, "items":["sword","stuff", "bow"]}
for i in range(5):
	 player.go+=randi() % 19
	



