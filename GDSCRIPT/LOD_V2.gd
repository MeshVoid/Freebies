tool
extends Spatial
# Initial distace value for each chun
var Distance_Chunk = 0
# LOD distance Needs tweaking

export  (int, 2, 40) var Dist_01 = 1
export (int, 40, 70)  var Dist_02 =2
export  (int, 75, 150) var Dist_03 = 4

# Base variables for update interval
export(float) var updInterval = 1.0
var updIntervalCalc = 1.0
var pCounter = 0.0

func _ready():
# Setting up update Inverval and giving it a certain degree of randomness
	updIntervalCalc=updInterval*(0.8+(randf()*0.2))
# On ready we are turning on the visibility off and on
	for _i in self.get_children():
		if _i != null :
#			print("set visibality in ready")
			_i.get_node("LOD1").visible = true
			_i.get_node("LOD2").visible = false
			_i.get_node("LOD3").visible = false
			
func _physics_process(delta):
pCounter+=delta
#	chunk13()
	if pCounter>updIntervalCalc:	
		for _i in self.get_children():
			if _i != null :
				if _i.get_child_count() > 0:
					 get_active_chunk( _i.get_children(),_i)
				else:
					 print("-node is empty "+_i.get_name())
                                                  



func get_active_chunk(_chaunk:Array,_conteiner)->void:
	# World/Player - those are two node hierarchies that mush be present too!
	var player =get_node("../Player").get_global_transform().origin 
	var label =get_node("../Label") 
	var hook_position  = _chaunk[0].global_transform.origin
	
	Distance_Chunk = player.distance_to(hook_position)
	
		#159                       #250                         #400
	if Distance_Chunk > Dist_01 and  Distance_Chunk < Dist_02 and Distance_Chunk < Dist_03:
		_chaunk[0].visible = false
		_chaunk[1].visible = false
		_chaunk[2].visible = true
	elif int(Distance_Chunk) > Dist_02  and int(Distance_Chunk) < Dist_03: #399
		_chaunk[0].visible = false
		_chaunk[1].visible = true
		_chaunk[2].visible = false
	elif Distance_Chunk > Dist_03:
		_chaunk[0].visible = true
		_chaunk[1].visible = false
		_chaunk[2].visible = false