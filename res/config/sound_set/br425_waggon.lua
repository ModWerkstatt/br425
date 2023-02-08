local soundsetutil = require "soundsetutil"

function data()

local data = soundsetutil.makeSoundSet()



soundsetutil.addTrackSqueal(data, "vehicle/train/wheels_ringing1.wav", 25.0)
soundsetutil.addTrackBrake(data, "vehicle/train_electric_modern/_brakes.wav", 25.0, .5)


soundsetutil.addEvent(data, "horn",       { "vehicle/br425/horn.wav" }, 25.0)
soundsetutil.addEvent(data, "openDoors",  { "vehicle/br425/tuer_auf.wav" }, 5.0)
soundsetutil.addEvent(data, "closeDoors", { "vehicle/br425/tuer_zu.wav" }, 5.0)

return data

end