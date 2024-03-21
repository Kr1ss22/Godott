#Kristjan Mustkivi 21.03
extends Node

var enemy = 100
var me = 100



func _ready():
	while enemy >0 && me>0:
		var dmg = randi() % 8 + 8#dmg 8-15
		var Edmg = randi() % 8 + 10
		enemy -= dmg
		me -= Edmg
		print("Player hit", dmg, "Enemy life: ", enemy)
		print("Enemy hit", dmg, "Playerlife: ", me)
		
		if me> enemy:
			print("GAME OVER - You win!")
		else:
			print("GAME OVER - You loose!")
	



