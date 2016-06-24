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
