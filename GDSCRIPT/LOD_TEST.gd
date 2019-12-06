extends Spatial
# LOD distance
var Distance = 0
var Dist_01 = 10
var Dist_02 = 20
# Setting update interval
export(float) var updInterval = 1
var updIntervalCalc = 1.0
var pCounter = 0.0

func _ready():
	# Update Interval Calculation
	updIntervalCalc=updInterval*(0.8+(randf()*0.2))
	
	$"Sphere-lod00".visible = true
	$"Sphere-lod01".visible = false
	$"Sphere-lod02".visible = false


func _physics_process(delta):
	# Update Process
	pCounter+=delta
	if pCounter>updIntervalCalc:
		upd_LOD()
		pCounter=0.0

# LOD Function
func upd_LOD():
	Distance = self.global_transform.origin.distance_to(get_tree().get_root().get_node("World/Player").get_global_transform().origin )

	if Distance > Dist_01 and Distance < Dist_02:
		$"Sphere-lod00".visible = false
		$"Sphere-lod01".visible = true
		$"Sphere-lod02".visible = false

	elif Distance > Dist_02:
		$"Sphere-lod00".visible = false
		$"Sphere-lod01".visible = false
		$"Sphere-lod02".visible = true

	else:
		$"Sphere-lod00".visible = true
		$"Sphere-lod01".visible = false
		$"Sphere-lod02".visible = false