Feature:
  como Brandon
  quiero iniciar una partida base
  para jugar 3diqui

Scenario: debo poder ver un pantalla de bienvenida
  Given que abri la aplicacion
  Then debo ver "Bienvenido a 3diqui"

Scenario: debo poder ver la cuadricula base del juego
  Given que abri la aplicacion
  Then debo ver la tabla base de nueve cuadros vacios

Scenario:  debo poder ver los nombres de los jugadores
  Given que abri la aplicacion
  Then debo ver "Jugador 1 - O"	

Scenario:  debo poder ver los nombres de los jugadores
  Given que abri la aplicacion
  Then debo ver "Jugador 2 - X"

Scenario:  debo poder ver una O en el campo uno
  Given que abri la aplicacion
  Then debo ver la letra "O" en la celda 1,1

Scenario: debo poder ingresar las coordenadas
  Given que abri la aplicacion
  When cuando lleno la posicion "X" con 1
  And cuando lleno la posicion "Y" con 1 
  And doy click en el boton "jugar"
  Then debo ver la letra "O" en la celda 1,1