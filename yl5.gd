#Kristjan Mustkivi 21.03
extends Node2D

var eksami_tulem = [7, 28, 64, 51, 81, 40, 21, 73, 34, 98, 39, 17, 33, 85, 35, 44]

# Called when the node enters the scene tree for the first time.
func _ready():
	palk(20, 20)
	palk(50, 20)
	keskmine(eksami_tulem)
	kõik(eksami_tulem)
	hindamine(eksami_tulem)

func palk(tunnid, tasu):
	var palk = 0
	if tunnid > 40:
		palk = 40 * tasu + (tunnid - 40) * 1.5 * tasu
	else:
		palk = tunnid * tasu
	print(round(palk))

func keskmine(tulemused):
	var summa = 0
	for p in tulemused:
		summa += p
	var kokku = len(tulemused)
	var keskmine = summa / kokku
	print("Keskmine tulemus:", keskmine)

func kõik(tulemused):
	var str_tulemused = []
	for p in tulemused:
		str_tulemused.append(str(p))
	print("Kõik tulemused: " + ", ".join(str_tulemused))

func hindamine(tulemused):
	for i in tulemused:
		var hinne = 2
		if i > 90:
			hinne = 5
		elif i > 75:
			hinne = 4
		elif i > 50:
			hinne = 3
		print(str(i) + "p - ", hinne)
