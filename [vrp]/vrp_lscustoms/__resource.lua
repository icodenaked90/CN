
description "vRP lscustoms - byhyperion"
--ui_page "ui/index.html"

dependency "vrp"
dependency "mysql-async"

client_scripts{
  "lib/Tunnel.lua",
  "lib/Proxy.lua",
  "client.lua"
}

server_scripts{
	"@mysql-async/lib/MySQL.lua",
  "@vrp/lib/utils.lua",
  "server.lua"
}
