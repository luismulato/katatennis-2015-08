Feature: Ingresar jugadores

Como un arbitro
Deseo ingresar los jugadores
Para que el publico pueda visualizarlo

Scenario: Presentar el titulo al inicio (SmokeTest)
Given ingreso al sitio TennisScore
Then debo ver el mensaje "Tennis Score"

Scenario: Ingresar los nombres de los jugadores
Given ingreso al sitio TennisScore
When ingreso jugador1 con "Nadal" y jugador2 con "Federer"
Then debo ver el mensaje "1:Nadal"
And debo ver el mensaje "2:Federer"

Scenario: No ingreso los nombres
Given ingreso al sitio TennisScore
When ingreso jugador1 con "" y jugador2 con ""
Then debo ver el mensaje "Ingresa los dos nombres de los jugadores"

Scenario: Ingreso solo jugador1
Given ingreso al sitio TennisScore
When ingreso jugador1 con "Nadal" y jugador2 con ""
Then debo ver el mensaje "Ingresa los dos nombres de los jugadores"

Scenario: Ingreso solo jugador2
Given ingreso al sitio TennisScore
When ingreso jugador1 con "" y jugador2 con "Federer"
Then debo ver el mensaje "Ingresa los dos nombres de los jugadores"

Scenario Outline: Ingresar nombres
  Given ingreso al sitio TennisScore
  When ingreso los jugadores "<jugador_1>" y "<jugador_2>" 
  Then debo ver el mensaje "<titulo_jugadores>"
  Examples:
  |jugador_1|jugador_2|titulo_jugadores|
  |         |       | Ingresa los dos nombres de los jugadores|
  | Federer |       | Ingresa los dos nombres de los jugadores|
  |         | Nadal | Ingresa los dos nombres de los jugadores|





