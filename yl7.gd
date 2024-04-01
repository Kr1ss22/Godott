extends Node

# Muutujate deklaratsioon
var vaenlaseElud = 16
var salveSuurus = 5
var skoor = 0
var laskudeArv = 0
var tabamisprots = 0.0
var padrunidSalves = 5

func _ready():
	pass
	
func _process(delta): 
	if Input.is_action_just_pressed('laskmine') and padrunidSalves > 0:
		tulista()
	if Input.is_action_just_pressed('reload'):
		laadi()


func tulista():
	padrunidSalves -= 1
	laskudeArv += 1
	var pihtas = randi() % 2 == 0
	if pihtas:
		var kahju = randi_range(1, 4) # Eeldame, et damage on 1-4 vahel
		vaenlaseElud -= kahju
		skoor += kahju
		print("Tabas! Kahju tekitatud: ", kahju)
	else:
		print("Mööda!")
	if padrunidSalves == 0:
		print("vajuta r et relva laadida")
	if vaenlaseElud <= 0:
		lopeta_mang()
	

func laadi():
	padrunidSalves = salveSuurus
	print("Salv laetud.")
	print_status()

func print_status():
	print("Vaenlase elud: ", vaenlaseElud)
	print("Salves padrunite arv: ", padrunidSalves)

func lopeta_mang(): 
	tabamisprots = skoor / laskudeArv * 100
	print("Mäng läbi!")
	print("Skoor: ", skoor)
	print("Laskude arv: ", laskudeArv)
	print("Tabamisprotsent: ", tabamisprots, "%")
	get_tree().quit()

