
description "vRP KnockDown"

dependency "vrp"

client_scripts{ 
  "lib/Tunnel.lua",
  "lib/Proxy.lua",
  "cfg/hotkeys.lua",
  "client.lua"
}

server_scripts{ 
  "@vrp/lib/utils.lua",
  "server.lua"
}
