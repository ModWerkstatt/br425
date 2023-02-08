local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()

soundsetutil.addTrackParam01
(data, "vehicle/br425/idle.wav", 18.0,
		{
			{ 0.00 , 0.3 },
			{ 0.10, 0.3 },
			{ 0.15, 0.0 },
			{ 1.00 , 0.0 } },
		
		{
			{ 0.0, 1.0 },
			{ 1.0, 1.0 } }, 
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/br425/elektrik2.wav", 18.0, --Hauptfahrsound
		{
			{ 0.0, 0.0 },
			{ 0.05, 0.3 },
			{ 1.0, 0.8 } },
		
		{
			{ 0.0, 0.8 },
			{ 1.0, 1.5 } },
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/br425/stufe1.wav", 18.0, --Anfahrtsummen
		{
			{ 0.0   , 0.0 },
			{ 0.25 ,  0.8 },
			{ 0.251,  0.1 },
			{ 0.321,  0.7 },
			{ 0.41 ,  0.3 },
			{ 1.0   , 0.0 } },
		
		{
			{ 0.0, 0.7 },
			{ 0.33, 1.1 },
			{ 0.331, 1.0 },
			{ 0.41, 1.2 },
			{ 0.411, 1.0 },
			{ 0.5, 1.2 },
			{ 0.51, 1.0 },
			{ 1.0, 1.1 } },
		"speed01")

soundsetutil.addTrackParam01
(data, "vehicle/br425/jaulen.wav", 18.0, --Stufe2 jaulen
		{
			{ 0.0    , 0.0 },
			{ 0.21 , 0.0 },
			{ 0.251  , 0.2 },
			{ 0.32   , 0.4 },
			{ 0.35   , 0.0 },
			{ 1.0    , 0.0 } },
		
		{
			{ 0.0, 0.8 },
			{ 0.25, 1.0 },
			{ 0.32, 1.1 },
			{ 1.0, 2.0 } },
		"speed01")



soundsetutil.addTrackSqueal(data, "vehicle/train/wheels_ringing2.wav", 18.0)
soundsetutil.addTrackBrake(data, "vehicle/train_electric_modern/_brakes.wav", 18.0, .5)


soundsetutil.addEvent(data, "horn",       { "vehicle/br425/horn.wav" }, 25.0)
soundsetutil.addEvent(data, "openDoors",  { "vehicle/br425/tuer_auf.wav" }, 8.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/br425/tuer_zu.wav" }, 8.0)

return data

end