# Kristjan Mustkivi, 2024-03-05, Harjutus 1

extends Node


var mängija_nimi = "Kristjan"
var elude_arv := 20

func _ready():
	
	print("Mängija nimi: ", mängija_nimi)
	print("Elude arv: ", elude_arv)
	
	
	print("Mängija nime pikkus: ", mängija_nimi.length())
	elude_arv += 2  #
	print("Elude arv pärast lisamist: ", elude_arv)
	
	var suvaline_arv = randi() % 20
	print("Suvaline arv vahemikus 0-19: ", suvaline_arv)
