extends Spatial

# Initial distance value for each chunk

var Distance_Chunk_1001 = 0
var Distance_Chunk_1002 = 0
var Distance_Chunk_1003 = 0
var Distance_Chunk_1004 = 0
var Distance_Chunk_1005 = 0
var Distance_Chunk_2001 = 0
var Distance_Chunk_2002 = 0
var Distance_Chunk_2003 = 0
var Distance_Chunk_2004 = 0
var Distance_Chunk_2005 = 0
var Distance_Chunk_3001 = 0
var Distance_Chunk_3002 = 0
var Distance_Chunk_3003 = 0
var Distance_Chunk_3004 = 0
var Distance_Chunk_3005 = 0
var Distance_Chunk_4001 = 0
var Distance_Chunk_4002 = 0
var Distance_Chunk_4003 = 0
var Distance_Chunk_4004 = 0
var Distance_Chunk_4005 = 0
var Distance_Chunk_5001 = 0
var Distance_Chunk_5002 = 0
var Distance_Chunk_5003 = 0
var Distance_Chunk_5004 = 0
var Distance_Chunk_5005 = 0

# LOD distance Needs tweaking

export var Dist_01 = 250
export var Dist_02 = 350
export var Dist_03 = 450

# Base variables for update interval
export(float) var updInterval = 1
var updIntervalCalc = 1.0
var pCounter = 0.0

func _ready():
# Setting up update Inverval and giving it a certain degree of randomness
	updIntervalCalc=updInterval*(0.8+(randf()*0.2))
	
# On ready we are turning on the visibility off and on

	$"Chunk_1001_LOD0".visible = true
	$"Chunk_1001_LOD1".visible = false
	$"Chunk_1001_LOD2".visible = false
	$"Chunk_1001_LOD3".visible = false
	
	$"Chunk_1002_LOD0".visible = true
	$"Chunk_1002_LOD1".visible = false
	$"Chunk_1002_LOD2".visible = false
	$"Chunk_1002_LOD3".visible = false

	$"Chunk_1002_LOD0".visible = true
	$"Chunk_1002_LOD1".visible = false
	$"Chunk_1002_LOD2".visible = false
	$"Chunk_1002_LOD3".visible = false

	$"Chunk_1003_LOD0".visible = true
	$"Chunk_1003_LOD1".visible = false
	$"Chunk_1003_LOD2".visible = false
	$"Chunk_1003_LOD3".visible = false

	$"Chunk_1004_LOD0".visible = true
	$"Chunk_1004_LOD1".visible = false
	$"Chunk_1004_LOD2".visible = false
	$"Chunk_1004_LOD3".visible = false

	$"Chunk_1005_LOD0".visible = true
	$"Chunk_1005_LOD1".visible = false
	$"Chunk_1005_LOD2".visible = false
	$"Chunk_1005_LOD3".visible = false

	$"Chunk_2001_LOD0".visible = true
	$"Chunk_2001_LOD1".visible = false
	$"Chunk_2001_LOD2".visible = false
	$"Chunk_2001_LOD3".visible = false

	$"Chunk_2002_LOD0".visible = true
	$"Chunk_2002_LOD1".visible = false
	$"Chunk_2002_LOD2".visible = false
	$"Chunk_2002_LOD3".visible = false

	$"Chunk_2003_LOD0".visible = true
	$"Chunk_2003_LOD1".visible = false
	$"Chunk_2003_LOD2".visible = false
	$"Chunk_2003_LOD3".visible = false

	$"Chunk_2004_LOD0".visible = true
	$"Chunk_2004_LOD1".visible = false
	$"Chunk_2004_LOD2".visible = false
	$"Chunk_2004_LOD3".visible = false

	$"Chunk_2005_LOD0".visible = true
	$"Chunk_2005_LOD1".visible = false
	$"Chunk_2005_LOD2".visible = false
	$"Chunk_2005_LOD3".visible = false

	$"Chunk_3001_LOD0".visible = true
	$"Chunk_3001_LOD1".visible = false
	$"Chunk_3001_LOD2".visible = false
	$"Chunk_3001_LOD3".visible = false

	$"Chunk_3002_LOD0".visible = true
	$"Chunk_3002_LOD1".visible = false
	$"Chunk_3002_LOD2".visible = false
	$"Chunk_3002_LOD3".visible = false

	$"Chunk_3003_LOD0".visible = true
	$"Chunk_3003_LOD1".visible = false
	$"Chunk_3003_LOD2".visible = false
	$"Chunk_3003_LOD3".visible = false

	$"Chunk_3004_LOD0".visible = true
	$"Chunk_3004_LOD1".visible = false
	$"Chunk_3004_LOD2".visible = false
	$"Chunk_3004_LOD3".visible = false

	$"Chunk_3005_LOD0".visible = true
	$"Chunk_3005_LOD1".visible = false
	$"Chunk_3005_LOD2".visible = false
	$"Chunk_3005_LOD3".visible = false

	$"Chunk_4001_LOD0".visible = true
	$"Chunk_4001_LOD1".visible = false
	$"Chunk_4001_LOD2".visible = false
	$"Chunk_4001_LOD3".visible = false

	$"Chunk_4002_LOD0".visible = true
	$"Chunk_4002_LOD1".visible = false
	$"Chunk_4002_LOD2".visible = false
	$"Chunk_4002_LOD3".visible = false

	$"Chunk_4003_LOD0".visible = true
	$"Chunk_4003_LOD1".visible = false
	$"Chunk_4003_LOD2".visible = false
	$"Chunk_4003_LOD3".visible = false

	$"Chunk_4004_LOD0".visible = true
	$"Chunk_4004_LOD1".visible = false
	$"Chunk_4004_LOD2".visible = false
	$"Chunk_4004_LOD3".visible = false

	$"Chunk_4005_LOD0".visible = true
	$"Chunk_4005_LOD1".visible = false
	$"Chunk_4005_LOD2".visible = false
	$"Chunk_4005_LOD3".visible = false

	$"Chunk_5001_LOD0".visible = true
	$"Chunk_5001_LOD1".visible = false
	$"Chunk_5001_LOD2".visible = false
	$"Chunk_5001_LOD3".visible = false

	$"Chunk_5002_LOD0".visible = true
	$"Chunk_5002_LOD1".visible = false
	$"Chunk_5002_LOD2".visible = false
	$"Chunk_5002_LOD3".visible = false
	
	$"Chunk_5003_LOD0".visible = true
	$"Chunk_5003_LOD1".visible = false
	$"Chunk_5003_LOD2".visible = false
	$"Chunk_5003_LOD3".visible = false

	$"Chunk_5004_LOD0".visible = true
	$"Chunk_5004_LOD1".visible = false
	$"Chunk_5004_LOD2".visible = false
	$"Chunk_5004_LOD3".visible = false

	$"Chunk_5005_LOD0".visible = true
	$"Chunk_5005_LOD1".visible = false
	$"Chunk_5005_LOD2".visible = false
	$"Chunk_5005_LOD3".visible = false


	#set_physics_process(true)


func _physics_process(delta):
	
	# Initiating the process of Intervaling for LOD calculation
	pCounter+=delta
	if pCounter>updIntervalCalc:
		
	# Chunk LOD update functions
		chunk_1001()
		chunk_1002()
		chunk_1003()
		chunk_1004()
		chunk_1005()
	
		chunk_2001()
		chunk_2002()
		chunk_2003()
		chunk_2004()
		chunk_2005()
	
		chunk_3001()
		chunk_3002()
		chunk_3003()
		chunk_3004()
		chunk_3005()
	
		chunk_4001()
		chunk_4002()
		chunk_4003()
		chunk_4004()
		chunk_4005()
	
		chunk_5001()
		chunk_5002()
		chunk_5003()
		chunk_5004()
		chunk_5005()
		pCounter=0.0




func chunk_1001():
	# World/Player - those are two node hierarchies that mush be present too!
	
	Distance_Chunk_1001 = $Chunk_1001_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_1001 > Dist_01 and Distance_Chunk_1001 < Dist_02 and Distance_Chunk_1001 < Dist_03:
		$Chunk_1001_LOD0.visible = false
		$Chunk_1001_LOD1.visible = true
		$Chunk_1001_LOD2.visible = false
		$Chunk_1001_LOD3.visible = false

	elif Distance_Chunk_1001 > Dist_02:
		$Chunk_1001_LOD0.visible = false
		$Chunk_1001_LOD1.visible = false
		$Chunk_1001_LOD2.visible = true
		$Chunk_1001_LOD3.visible = false
		
	elif Distance_Chunk_1001 > Dist_03:
		$Chunk_1001_LOD0.visible = false
		$Chunk_1001_LOD1.visible = false
		$Chunk_1001_LOD2.visible = false
		$Chunk_1001_LOD3.visible = true
		
	else:
		$Chunk_1001_LOD0.visible = true
		$Chunk_1001_LOD1.visible = false
		$Chunk_1001_LOD2.visible = false
		$Chunk_1001_LOD3.visible = false
		
func chunk_1002():
	
	Distance_Chunk_1002 = $Chunk_1002_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_1002 > Dist_01 and Distance_Chunk_1002 < Dist_02 and Distance_Chunk_1002 < Dist_03:
		$Chunk_1002_LOD0.visible = false
		$Chunk_1002_LOD1.visible = true
		$Chunk_1002_LOD2.visible = false
		$Chunk_1002_LOD3.visible = false

	elif Distance_Chunk_1002 > Dist_02:
		$Chunk_1002_LOD0.visible = false
		$Chunk_1002_LOD1.visible = false
		$Chunk_1002_LOD2.visible = true
		$Chunk_1002_LOD3.visible = false
		
	elif Distance_Chunk_1002 > Dist_03:
		$Chunk_1002_LOD0.visible = false
		$Chunk_1002_LOD1.visible = false
		$Chunk_1002_LOD2.visible = false
		$Chunk_1002_LOD3.visible = true
		
	else:
		$Chunk_1002_LOD0.visible = true
		$Chunk_1002_LOD1.visible = false
		$Chunk_1002_LOD2.visible = false
		$Chunk_1002_LOD3.visible = false
		
func chunk_1003():
	
	Distance_Chunk_1003 = $Chunk_1003_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_1003 > Dist_01 and Distance_Chunk_1003 < Dist_02 and Distance_Chunk_1003 < Dist_03:
		$Chunk_1003_LOD0.visible = false
		$Chunk_1003_LOD1.visible = true
		$Chunk_1003_LOD2.visible = false
		$Chunk_1003_LOD3.visible = false

	elif Distance_Chunk_1003 > Dist_02:
		$Chunk_1003_LOD0.visible = false
		$Chunk_1003_LOD1.visible = false
		$Chunk_1003_LOD2.visible = true
		$Chunk_1003_LOD3.visible = false
		
	elif Distance_Chunk_1003 > Dist_03:
		$Chunk_1003_LOD0.visible = false
		$Chunk_1003_LOD1.visible = false
		$Chunk_1003_LOD2.visible = false
		$Chunk_1003_LOD3.visible = true
		
	else:
		$Chunk_1003_LOD0.visible = true
		$Chunk_1003_LOD1.visible = false
		$Chunk_1003_LOD2.visible = false
		$Chunk_1003_LOD3.visible = false
		
func chunk_1004():
	
	Distance_Chunk_1004 = $Chunk_1004_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_1004 > Dist_01 and Distance_Chunk_1004 < Dist_02 and Distance_Chunk_1004 < Dist_03:
		$Chunk_1004_LOD0.visible = false
		$Chunk_1004_LOD1.visible = true
		$Chunk_1004_LOD2.visible = false
		$Chunk_1004_LOD3.visible = false

	elif Distance_Chunk_1004 > Dist_02:
		$Chunk_1004_LOD0.visible = false
		$Chunk_1004_LOD1.visible = false
		$Chunk_1004_LOD2.visible = true
		$Chunk_1004_LOD3.visible = false
		
	elif Distance_Chunk_1004 > Dist_03:
		$Chunk_1004_LOD0.visible = false
		$Chunk_1004_LOD1.visible = false
		$Chunk_1004_LOD2.visible = false
		$Chunk_1004_LOD3.visible = true
		
	else:
		$Chunk_1004_LOD0.visible = true
		$Chunk_1004_LOD1.visible = false
		$Chunk_1004_LOD2.visible = false
		$Chunk_1004_LOD3.visible = false
		
func chunk_1005():
	
	Distance_Chunk_1005 = $Chunk_1005_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_1005 > Dist_01 and Distance_Chunk_1005 < Dist_02 and Distance_Chunk_1005 < Dist_03:
		$Chunk_1005_LOD0.visible = false
		$Chunk_1005_LOD1.visible = true
		$Chunk_1005_LOD2.visible = false
		$Chunk_1005_LOD3.visible = false

	elif Distance_Chunk_1005 > Dist_02:
		$Chunk_1005_LOD0.visible = false
		$Chunk_1005_LOD1.visible = false
		$Chunk_1005_LOD2.visible = true
		$Chunk_1005_LOD3.visible = false
		
	elif Distance_Chunk_1005 > Dist_03:
		$Chunk_1005_LOD0.visible = false
		$Chunk_1005_LOD1.visible = false
		$Chunk_1005_LOD2.visible = false
		$Chunk_1005_LOD3.visible = true
		
	else:
		$Chunk_1005_LOD0.visible = true
		$Chunk_1005_LOD1.visible = false
		$Chunk_1005_LOD2.visible = false
		$Chunk_1005_LOD3.visible = false
		
func chunk_2001():
	
	Distance_Chunk_2001 = $Chunk_2001_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_2001 > Dist_01 and Distance_Chunk_2001 < Dist_02 and Distance_Chunk_2001 < Dist_03:
		$Chunk_2001_LOD0.visible = false
		$Chunk_2001_LOD1.visible = true
		$Chunk_2001_LOD2.visible = false
		$Chunk_2001_LOD3.visible = false

	elif Distance_Chunk_2001 > Dist_02:
		$Chunk_2001_LOD0.visible = false
		$Chunk_2001_LOD1.visible = false
		$Chunk_2001_LOD2.visible = true
		$Chunk_2001_LOD3.visible = false
		
	elif Distance_Chunk_2001 > Dist_03:
		$Chunk_2001_LOD0.visible = false
		$Chunk_2001_LOD1.visible = false
		$Chunk_2001_LOD2.visible = false
		$Chunk_2001_LOD3.visible = true
		
	else:
		$Chunk_2001_LOD0.visible = true
		$Chunk_2001_LOD1.visible = false
		$Chunk_2001_LOD2.visible = false
		$Chunk_2001_LOD3.visible = false
		
func chunk_2002():
	
	Distance_Chunk_2002 = $Chunk_2002_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_2002 > Dist_01 and Distance_Chunk_2002 < Dist_02 and Distance_Chunk_2002 < Dist_03:
		$Chunk_2002_LOD0.visible = false
		$Chunk_2002_LOD1.visible = true
		$Chunk_2002_LOD2.visible = false
		$Chunk_2002_LOD3.visible = false

	elif Distance_Chunk_2002 > Dist_02:
		$Chunk_2002_LOD0.visible = false
		$Chunk_2002_LOD1.visible = false
		$Chunk_2002_LOD2.visible = true
		$Chunk_2002_LOD3.visible = false
		
	elif Distance_Chunk_2002 > Dist_03:
		$Chunk_2002_LOD0.visible = false
		$Chunk_2002_LOD1.visible = false
		$Chunk_2002_LOD2.visible = false
		$Chunk_2002_LOD3.visible = true
		
	else:
		$Chunk_2002_LOD0.visible = true
		$Chunk_2002_LOD1.visible = false
		$Chunk_2002_LOD2.visible = false
		$Chunk_2002_LOD3.visible = false

func chunk_2003():
	
	Distance_Chunk_2003 = $Chunk_2003_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_2003 > Dist_01 and Distance_Chunk_2003 < Dist_02 and Distance_Chunk_2003 < Dist_03:
		$Chunk_2003_LOD0.visible = false
		$Chunk_2003_LOD1.visible = true
		$Chunk_2003_LOD2.visible = false
		$Chunk_2003_LOD3.visible = false

	elif Distance_Chunk_2003 > Dist_02:
		$Chunk_2003_LOD0.visible = false
		$Chunk_2003_LOD1.visible = false
		$Chunk_2003_LOD2.visible = true
		$Chunk_2003_LOD3.visible = false
		
	elif Distance_Chunk_2003 > Dist_03:
		$Chunk_2003_LOD0.visible = false
		$Chunk_2003_LOD1.visible = false
		$Chunk_2003_LOD2.visible = false
		$Chunk_2003_LOD3.visible = true
		
	else:
		$Chunk_2003_LOD0.visible = true
		$Chunk_2003_LOD1.visible = false
		$Chunk_2003_LOD2.visible = false
		$Chunk_2003_LOD3.visible = false

func chunk_2004():
	
	Distance_Chunk_2004 = $Chunk_2004_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_2004 > Dist_01 and Distance_Chunk_2004 < Dist_02 and Distance_Chunk_2004 < Dist_03:
		$Chunk_2004_LOD0.visible = false
		$Chunk_2004_LOD1.visible = true
		$Chunk_2004_LOD2.visible = false
		$Chunk_2004_LOD3.visible = false

	elif Distance_Chunk_2004 > Dist_02:
		$Chunk_2004_LOD0.visible = false
		$Chunk_2004_LOD1.visible = false
		$Chunk_2004_LOD2.visible = true
		$Chunk_2004_LOD3.visible = false
		
	elif Distance_Chunk_2004 > Dist_03:
		$Chunk_2004_LOD0.visible = false
		$Chunk_2004_LOD1.visible = false
		$Chunk_2004_LOD2.visible = false
		$Chunk_2004_LOD3.visible = true
		
	else:
		$Chunk_2004_LOD0.visible = true
		$Chunk_2004_LOD1.visible = false
		$Chunk_2004_LOD2.visible = false
		$Chunk_2004_LOD3.visible = false

func chunk_2005():
	
	Distance_Chunk_2005 = $Chunk_2005_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_2005 > Dist_01 and Distance_Chunk_2005 < Dist_02 and Distance_Chunk_2005 < Dist_03:
		$Chunk_2005_LOD0.visible = false
		$Chunk_2005_LOD1.visible = true
		$Chunk_2005_LOD2.visible = false
		$Chunk_2005_LOD3.visible = false

	elif Distance_Chunk_2005 > Dist_02:
		$Chunk_2005_LOD0.visible = false
		$Chunk_2005_LOD1.visible = false
		$Chunk_2005_LOD2.visible = true
		$Chunk_2005_LOD3.visible = false
		
	elif Distance_Chunk_2005 > Dist_03:
		$Chunk_2005_LOD0.visible = false
		$Chunk_2005_LOD1.visible = false
		$Chunk_2005_LOD2.visible = false
		$Chunk_2005_LOD3.visible = true
		
	else:
		$Chunk_2005_LOD0.visible = true
		$Chunk_2005_LOD1.visible = false
		$Chunk_2005_LOD2.visible = false
		$Chunk_2005_LOD3.visible = false

func chunk_3001():
	
	Distance_Chunk_3001 = $Chunk_3001_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_3001 > Dist_01 and Distance_Chunk_3001 < Dist_02 and Distance_Chunk_3001 < Dist_03:
		$Chunk_3001_LOD0.visible = false
		$Chunk_3001_LOD1.visible = true
		$Chunk_3001_LOD2.visible = false
		$Chunk_3001_LOD3.visible = false

	elif Distance_Chunk_3001 > Dist_02:
		$Chunk_3001_LOD0.visible = false
		$Chunk_3001_LOD1.visible = false
		$Chunk_3001_LOD2.visible = true
		$Chunk_3001_LOD3.visible = false
		
	elif Distance_Chunk_3001 > Dist_03:
		$Chunk_3001_LOD0.visible = false
		$Chunk_3001_LOD1.visible = false
		$Chunk_3001_LOD2.visible = false
		$Chunk_3001_LOD3.visible = true
		
	else:
		$Chunk_3001_LOD0.visible = true
		$Chunk_3001_LOD1.visible = false
		$Chunk_3001_LOD2.visible = false
		$Chunk_3001_LOD3.visible = false
		
func chunk_3002():
	
	Distance_Chunk_3002 = $Chunk_3002_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_3002 > Dist_01 and Distance_Chunk_3002 < Dist_02 and Distance_Chunk_3002 < Dist_03:
		$Chunk_3002_LOD0.visible = false
		$Chunk_3002_LOD1.visible = true
		$Chunk_3002_LOD2.visible = false
		$Chunk_3002_LOD3.visible = false

	elif Distance_Chunk_3002 > Dist_02:
		$Chunk_3002_LOD0.visible = false
		$Chunk_3002_LOD1.visible = false
		$Chunk_3002_LOD2.visible = true
		$Chunk_3002_LOD3.visible = false
		
	elif Distance_Chunk_3002 > Dist_03:
		$Chunk_3002_LOD0.visible = false
		$Chunk_3002_LOD1.visible = false
		$Chunk_3002_LOD2.visible = false
		$Chunk_3002_LOD3.visible = true
		
	else:
		$Chunk_3002_LOD0.visible = true
		$Chunk_3002_LOD1.visible = false
		$Chunk_3002_LOD2.visible = false
		$Chunk_3002_LOD3.visible = false

func chunk_3003():
	
	Distance_Chunk_3003 = $Chunk_3003_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_3003 > Dist_01 and Distance_Chunk_3003 < Dist_02 and Distance_Chunk_3003 < Dist_03:
		$Chunk_3003_LOD0.visible = false
		$Chunk_3003_LOD1.visible = true
		$Chunk_3003_LOD2.visible = false
		$Chunk_3003_LOD3.visible = false

	elif Distance_Chunk_3003 > Dist_02:
		$Chunk_3003_LOD0.visible = false
		$Chunk_3003_LOD1.visible = false
		$Chunk_3003_LOD2.visible = true
		$Chunk_3003_LOD3.visible = false
		
	elif Distance_Chunk_3003 > Dist_03:
		$Chunk_3003_LOD0.visible = false
		$Chunk_3003_LOD1.visible = false
		$Chunk_3003_LOD2.visible = false
		$Chunk_3003_LOD3.visible = true
		
	else:
		$Chunk_3003_LOD0.visible = true
		$Chunk_3003_LOD1.visible = false
		$Chunk_3003_LOD2.visible = false
		$Chunk_3003_LOD3.visible = false
		
func chunk_3004():
	
	Distance_Chunk_3004 = $Chunk_3004_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_3004 > Dist_01 and Distance_Chunk_3004 < Dist_02 and Distance_Chunk_3004 < Dist_03:
		$Chunk_3004_LOD0.visible = false
		$Chunk_3004_LOD1.visible = true
		$Chunk_3004_LOD2.visible = false
		$Chunk_3004_LOD3.visible = false

	elif Distance_Chunk_3004 > Dist_02:
		$Chunk_3004_LOD0.visible = false
		$Chunk_3004_LOD1.visible = false
		$Chunk_3004_LOD2.visible = true
		$Chunk_3004_LOD3.visible = false
		
	elif Distance_Chunk_3004 > Dist_03:
		$Chunk_3004_LOD0.visible = false
		$Chunk_3004_LOD1.visible = false
		$Chunk_3004_LOD2.visible = false
		$Chunk_3004_LOD3.visible = true
		
	else:
		$Chunk_3004_LOD0.visible = true
		$Chunk_3004_LOD1.visible = false
		$Chunk_3004_LOD2.visible = false
		$Chunk_3004_LOD3.visible = false
		
func chunk_3005():
	
	Distance_Chunk_3005 = $Chunk_3005_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_3005 > Dist_01 and Distance_Chunk_3005 < Dist_02 and Distance_Chunk_3005 < Dist_03:
		$Chunk_3005_LOD0.visible = false
		$Chunk_3005_LOD1.visible = true
		$Chunk_3005_LOD2.visible = false
		$Chunk_3005_LOD3.visible = false

	elif Distance_Chunk_3005 > Dist_02:
		$Chunk_3005_LOD0.visible = false
		$Chunk_3005_LOD1.visible = false
		$Chunk_3005_LOD2.visible = true
		$Chunk_3005_LOD3.visible = false
		
	elif Distance_Chunk_3005 > Dist_03:
		$Chunk_3005_LOD0.visible = false
		$Chunk_3005_LOD1.visible = false
		$Chunk_3005_LOD2.visible = false
		$Chunk_3005_LOD3.visible = true
		
	else:
		$Chunk_3005_LOD0.visible = true
		$Chunk_3005_LOD1.visible = false
		$Chunk_3005_LOD2.visible = false
		$Chunk_3005_LOD3.visible = false

func chunk_4001():
	
	Distance_Chunk_4001 = $Chunk_4001_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_4001 > Dist_01 and Distance_Chunk_4001 < Dist_02 and Distance_Chunk_4001 < Dist_03:
		$Chunk_4001_LOD0.visible = false
		$Chunk_4001_LOD1.visible = true
		$Chunk_4001_LOD2.visible = false
		$Chunk_4001_LOD3.visible = false

	elif Distance_Chunk_4001 > Dist_02:
		$Chunk_4001_LOD0.visible = false
		$Chunk_4001_LOD1.visible = false
		$Chunk_4001_LOD2.visible = true
		$Chunk_4001_LOD3.visible = false
		
	elif Distance_Chunk_4001 > Dist_03:
		$Chunk_4001_LOD0.visible = false
		$Chunk_4001_LOD1.visible = false
		$Chunk_4001_LOD2.visible = false
		$Chunk_4001_LOD3.visible = true
		
	else:
		$Chunk_4001_LOD0.visible = true
		$Chunk_4001_LOD1.visible = false
		$Chunk_4001_LOD2.visible = false
		$Chunk_4001_LOD3.visible = false

func chunk_4002():
	
	Distance_Chunk_4002 = $Chunk_4002_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_4002 > Dist_01 and Distance_Chunk_4002 < Dist_02 and Distance_Chunk_4002 < Dist_03:
		$Chunk_4002_LOD0.visible = false
		$Chunk_4002_LOD1.visible = true
		$Chunk_4002_LOD2.visible = false
		$Chunk_4002_LOD3.visible = false

	elif Distance_Chunk_4002 > Dist_02:
		$Chunk_4002_LOD0.visible = false
		$Chunk_4002_LOD1.visible = false
		$Chunk_4002_LOD2.visible = true
		$Chunk_4002_LOD3.visible = false
		
	elif Distance_Chunk_4002 > Dist_03:
		$Chunk_4002_LOD0.visible = false
		$Chunk_4002_LOD1.visible = false
		$Chunk_4002_LOD2.visible = false
		$Chunk_4002_LOD3.visible = true
		
	else:
		$Chunk_4002_LOD0.visible = true
		$Chunk_4002_LOD1.visible = false
		$Chunk_4002_LOD2.visible = false
		$Chunk_4002_LOD3.visible = false


func chunk_4003():
	
	Distance_Chunk_4003 = $Chunk_4003_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_4003 > Dist_01 and Distance_Chunk_4003 < Dist_02 and Distance_Chunk_4003 < Dist_03:
		$Chunk_4003_LOD0.visible = false
		$Chunk_4003_LOD1.visible = true
		$Chunk_4003_LOD2.visible = false
		$Chunk_4003_LOD3.visible = false

	elif Distance_Chunk_4003 > Dist_02:
		$Chunk_4003_LOD0.visible = false
		$Chunk_4003_LOD1.visible = false
		$Chunk_4003_LOD2.visible = true
		$Chunk_4003_LOD3.visible = false
		
	elif Distance_Chunk_4003 > Dist_03:
		$Chunk_4003_LOD0.visible = false
		$Chunk_4003_LOD1.visible = false
		$Chunk_4003_LOD2.visible = false
		$Chunk_4003_LOD3.visible = true
		
	else:
		$Chunk_4003_LOD0.visible = true
		$Chunk_4003_LOD1.visible = false
		$Chunk_4003_LOD2.visible = false
		$Chunk_4003_LOD3.visible = false

func chunk_4004():
	
	Distance_Chunk_4004 = $Chunk_4004_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_4004 > Dist_01 and Distance_Chunk_4004 < Dist_02 and Distance_Chunk_4004 < Dist_03:
		$Chunk_4004_LOD0.visible = false
		$Chunk_4004_LOD1.visible = true
		$Chunk_4004_LOD2.visible = false
		$Chunk_4004_LOD3.visible = false

	elif Distance_Chunk_4004 > Dist_02:
		$Chunk_4004_LOD0.visible = false
		$Chunk_4004_LOD1.visible = false
		$Chunk_4004_LOD2.visible = true
		$Chunk_4004_LOD3.visible = false
		
	elif Distance_Chunk_4004 > Dist_03:
		$Chunk_4004_LOD0.visible = false
		$Chunk_4004_LOD1.visible = false
		$Chunk_4004_LOD2.visible = false
		$Chunk_4004_LOD3.visible = true
		
	else:
		$Chunk_4004_LOD0.visible = true
		$Chunk_4004_LOD1.visible = false
		$Chunk_4004_LOD2.visible = false
		$Chunk_4004_LOD3.visible = false

func chunk_4005():
	
	Distance_Chunk_4005 = $Chunk_4005_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_4005 > Dist_01 and Distance_Chunk_4005 < Dist_02 and Distance_Chunk_4005 < Dist_03:
		$Chunk_4005_LOD0.visible = false
		$Chunk_4005_LOD1.visible = true
		$Chunk_4005_LOD2.visible = false
		$Chunk_4005_LOD3.visible = false

	elif Distance_Chunk_4005 > Dist_02:
		$Chunk_4005_LOD0.visible = false
		$Chunk_4005_LOD1.visible = false
		$Chunk_4005_LOD2.visible = true
		$Chunk_4005_LOD3.visible = false
		
	elif Distance_Chunk_4005 > Dist_03:
		$Chunk_4005_LOD0.visible = false
		$Chunk_4005_LOD1.visible = false
		$Chunk_4005_LOD2.visible = false
		$Chunk_4005_LOD3.visible = true
		
	else:
		$Chunk_4005_LOD0.visible = true
		$Chunk_4005_LOD1.visible = false
		$Chunk_4005_LOD2.visible = false
		$Chunk_4005_LOD3.visible = false

func chunk_5001():
	
	Distance_Chunk_5001 = $Chunk_5001_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_5001 > Dist_01 and Distance_Chunk_5001 < Dist_02 and Distance_Chunk_5001 < Dist_03:
		$Chunk_5001_LOD0.visible = false
		$Chunk_5001_LOD1.visible = true
		$Chunk_5001_LOD2.visible = false
		$Chunk_5001_LOD3.visible = false

	elif Distance_Chunk_5001 > Dist_02:
		$Chunk_5001_LOD0.visible = false
		$Chunk_5001_LOD1.visible = false
		$Chunk_5001_LOD2.visible = true
		$Chunk_5001_LOD3.visible = false
		
	elif Distance_Chunk_5001 > Dist_03:
		$Chunk_5001_LOD0.visible = false
		$Chunk_5001_LOD1.visible = false
		$Chunk_5001_LOD2.visible = false
		$Chunk_5001_LOD3.visible = true
		
	else:
		$Chunk_5001_LOD0.visible = true
		$Chunk_5001_LOD1.visible = false
		$Chunk_5001_LOD2.visible = false
		$Chunk_5001_LOD3.visible = false

func chunk_5002():
	
	Distance_Chunk_5002 = $Chunk_5002_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_5002 > Dist_01 and Distance_Chunk_5002 < Dist_02 and Distance_Chunk_5002 < Dist_03:
		$Chunk_5002_LOD0.visible = false
		$Chunk_5002_LOD1.visible = true
		$Chunk_5002_LOD2.visible = false
		$Chunk_5002_LOD3.visible = false

	elif Distance_Chunk_5002 > Dist_02:
		$Chunk_5002_LOD0.visible = false
		$Chunk_5002_LOD1.visible = false
		$Chunk_5002_LOD2.visible = true
		$Chunk_5002_LOD3.visible = false
		
	elif Distance_Chunk_5002 > Dist_03:
		$Chunk_5002_LOD0.visible = false
		$Chunk_5002_LOD1.visible = false
		$Chunk_5002_LOD2.visible = false
		$Chunk_5002_LOD3.visible = true
		
	else:
		$Chunk_5002_LOD0.visible = true
		$Chunk_5002_LOD1.visible = false
		$Chunk_5002_LOD2.visible = false
		$Chunk_5002_LOD3.visible = false

func chunk_5003():
	
	Distance_Chunk_5003 = $Chunk_5003_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_5003 > Dist_01 and Distance_Chunk_5003 < Dist_02 and Distance_Chunk_5003 < Dist_03:
		$Chunk_5003_LOD0.visible = false
		$Chunk_5003_LOD1.visible = true
		$Chunk_5003_LOD2.visible = false
		$Chunk_5003_LOD3.visible = false

	elif Distance_Chunk_5003 > Dist_02:
		$Chunk_5003_LOD0.visible = false
		$Chunk_5003_LOD1.visible = false
		$Chunk_5003_LOD2.visible = true
		$Chunk_5003_LOD3.visible = false
		
	elif Distance_Chunk_5003 > Dist_03:
		$Chunk_5003_LOD0.visible = false
		$Chunk_5003_LOD1.visible = false
		$Chunk_5003_LOD2.visible = false
		$Chunk_5003_LOD3.visible = true
		
	else:
		$Chunk_5003_LOD0.visible = true
		$Chunk_5003_LOD1.visible = false
		$Chunk_5003_LOD2.visible = false
		$Chunk_5003_LOD3.visible = false

func chunk_5004():
	
	Distance_Chunk_5004 = $Chunk_5004_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_5004 > Dist_01 and Distance_Chunk_5004 < Dist_02 and Distance_Chunk_5004 < Dist_03:
		$Chunk_5004_LOD0.visible = false
		$Chunk_5004_LOD1.visible = true
		$Chunk_5004_LOD2.visible = false
		$Chunk_5004_LOD3.visible = false

	elif Distance_Chunk_5004 > Dist_02:
		$Chunk_5004_LOD0.visible = false
		$Chunk_5004_LOD1.visible = false
		$Chunk_5004_LOD2.visible = true
		$Chunk_5004_LOD3.visible = false
		
	elif Distance_Chunk_5004 > Dist_03:
		$Chunk_5004_LOD0.visible = false
		$Chunk_5004_LOD1.visible = false
		$Chunk_5004_LOD2.visible = false
		$Chunk_5004_LOD3.visible = true
		
	else:
		$Chunk_5004_LOD0.visible = true
		$Chunk_5004_LOD1.visible = false
		$Chunk_5004_LOD2.visible = false
		$Chunk_5004_LOD3.visible = false

func chunk_5005():
	
	Distance_Chunk_5005 = $Chunk_5005_LOD0.global_transform.origin.distance_to( get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance_Chunk_5005 > Dist_01 and Distance_Chunk_5005 < Dist_02 and Distance_Chunk_5005 < Dist_03:
		$Chunk_5005_LOD0.visible = false
		$Chunk_5005_LOD1.visible = true
		$Chunk_5005_LOD2.visible = false
		$Chunk_5005_LOD3.visible = false

	elif Distance_Chunk_5005 > Dist_02:
		$Chunk_5005_LOD0.visible = false
		$Chunk_5005_LOD1.visible = false
		$Chunk_5005_LOD2.visible = true
		$Chunk_5005_LOD3.visible = false
		
	elif Distance_Chunk_5005 > Dist_03:
		$Chunk_5005_LOD0.visible = false
		$Chunk_5005_LOD1.visible = false
		$Chunk_5005_LOD2.visible = false
		$Chunk_5005_LOD3.visible = true
		
	else:
		$Chunk_5005_LOD0.visible = true
		$Chunk_5005_LOD1.visible = false
		$Chunk_5005_LOD2.visible = false
		$Chunk_5005_LOD3.visible = false