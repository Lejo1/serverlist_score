--  This mod tries to get the best score on the serverlist for you.

minetest.register_on_prejoinplayer(function(name, ip)
  local max_users = minetest.settings:get("max_users")*0.8
  if max_users > 160 then --  Maximum of 200 client*0.8=160
    minetest.log("warning", "serverlist_score: Your max_users is higher then 200 you will get -8 points!")
  end
  if max_users < #minetest.get_connected_players()+1 and not minetest.get_player_privs(name).server then
    return "Too many users."
  end
end)
