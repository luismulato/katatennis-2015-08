require 'sinatra'

get '/' do
  @@mensaje = ""
  erb :inicio
end

get '/jugar' do
  @@jugador1 = params["jugador1"]
  @@jugador2 = params["jugador2"]
  @@mensaje = ""
  if @@jugador1 == "" || @@jugador2== ""
    @@mensaje = "Ingresa los dos nombres de los jugadores"
    erb :inicio
  else
    erb :jugar
  end
end


