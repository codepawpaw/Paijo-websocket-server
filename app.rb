require "em-websocket"
require "json"
require "redis"

require_relative "./protocol"
require_relative "./route"

user = Hash.new
redis = Redis.new


EM.run {

  EM::WebSocket.run(:host => "0.0.0.0", :port => "8081") do |ws|
    ws.onopen { |handshake|
      puts "WebSocket connection open"
      ws.send "Hello Client, you connected to #{handshake.path}"
    }

    ws.onclose { puts "Connection closed" }

    ws.onmessage { |msg|
    	protocol = Protocol.new(msg)
  	route = Route.new(protocol.route)

  	if route.new_session?
  		if(user[protocol.user] != nil)
  			user[protocol.user][1] = ws
  		else
  			user[protocol.user] = [protocol.user, ws]
  		end
  	end

  	if route.show_message?
  		if(user[protocol.target] != nil)
  			user[protocol.target][1].send(protocol.message)
  		end
  	end
  	# puts "Recieved message: #{msg}"
    # 	ws.send "Pong: #{msg}"
    }
  end
}

