Feature:
  como Brandon
  quiero iniciar una partida base
  para jugar 3diqui

Scenario: debo poder ver un pantalla de bienvenida
  Given que abri la aplicacion
  Then debo ver "Bienvenido a 3diqui"

#Scenario: debo poder indicar los nombres de los jugadores
#  Given que abri la aplicacion
#  When indico que el "jugador1" es "Federer"
#  And indico que el "jugador2" es "Del Potro"
#  And inicio un juego
#  Then debo ver "Federer vs Del Potro"
