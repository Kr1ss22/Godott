#Kristjan Mustkivi 21.03
extends Node2D

var players = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","
Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",
"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",
"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",
"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
 
#Kuva mängijate arv
#Kuva kõige esimene nimi massiivist
#Järjesta massiiv tõusvas järjekorras
#Eemalda funktsiooni abil massiivist mängija Reyes
#Lisa funktsiooni abil oma nimi massiivi
#Leia kõige pikem nimi
#Kuva kõik mängijad



func _ready():
	print("Mängijate arv" , len(players))
	print ("esimene: ", players [0])
	players.sort()
	var tyyp = players.find("Rayes",0)
	players.erase(tyyp)
	players.append("kristjan")
	var pikimnimePikkus = 0
	var pikimnimi = ""
	for i in players:
		if pikimnimePikkus<len(i):
			pikimnimePikkus = len(i)
			pikimnimi= i 
			print("pikim nimi:", pikimnimi)
		print(i)
		
	
	
	
	
	
	
	


