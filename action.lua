function on_msg_receive (msg)
  if msg.out then
    return
  end
  if (msg.text=='Ciao') then
    send_msg (msg.from.print_name, 'Ciao ' .. msg.from.print_name .. ' :)', ok_cb, false)
  elseif (msg.text=='Ping') then
    send_msg (msg.from.print_name, 'Pong', ok_cb, false)
  elseif (string.sub(msg.text, 1, 1)=='!') then    
	if (msg.from.print_name == 'CHANGE_ME_WITH_YOUR_NAME') then
	    local handle = io.popen(string.sub(msg.text, 2))
	    local result = handle:read("*a")
	    handle:close()
	    send_msg (msg.from.print_name, result, ok_cb, false)
	else
	    send_msg (msg.from.print_name, '401 - Not authorized.', ok_cb, false)
	end
  elseif (msg.text=='PHP') then
	local handle = io.popen('php /var/www/html/TelePAM.php')
	local result = handle:read("*a")
	handle:close()
	send_msg (msg.from.print_name, result, ok_cb, false)
  end
end

function on_our_id (id)
end

function on_secret_chat_created (peer)
end

function on_user_update (user)
end

function on_chat_update (user)
end

function on_get_difference_end ()
end

function on_binlog_replay_end ()
end
