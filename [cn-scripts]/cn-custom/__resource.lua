resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

dependency "vrp"

client_scripts {
    "lib/Tunnel.lua",
    "lib/Proxy.lua",
    "lib/enum.lua",
	"client/main.lua",
	"client/radar.lua",
    -- "client/handsup.lua",
    "client/nowanted.lua",
    "client/pointfinger.lua",
    --"client/stungun.lua",
    "client/scope.lua",
    "client/vinduerul.lua",
    "client/noweapondrops.lua",
    "client/cruise.lua",
    "client/RemoveFiveMShit.lua",
    --"client/ragdoll.lua",
    --"client/removeAI.lua",
    "client/dive.lua",
  --  "client/cleanup.lua",
    -- "client/npcplatechanger.lua",
    "client/NPC-Control.lua",
  --  "client/lift.lua",
    "client/crouch.lua",
    "client/DriveByLimit.lua",
    --"client/autopilot.lua",
    "client/opgiv.lua",
    "client/stamina.lua",
  --  "client/bankdriver.lua",
    "client/dogo_client.lua",
    "client/police.lua",
    --"client/snowballs.lua",
	  "client/toggleengine.lua",
	 -- "client/christmas.lua",
	  --"client/ball.lua",
    -- "client/removePlate.lua"
    "client/components.lua",
    "client/pole.lua"
}


ui_page 'h.html'
files {
  'weaponsnowball.meta',
  -- 'client/h.html'
}



data_file 'WEAPONINFO_FILE_PATCH' 'weaponsnowball.meta'


server_scripts {
    "@vrp/lib/utils.lua",
    "server/dive.lua",
    "server/drift.lua",
    "server/pole.lua",
  --  "server/lift.lua",
    "server/revive.lua",
    "server/vinduerul.lua",
  --  "server/christmas.lua",
    "server/scope.lua",
    "server/components.lua",
    "server/radio.lua",
}
