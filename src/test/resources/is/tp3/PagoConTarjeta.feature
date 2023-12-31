Feature: Pago con Tarjeta
  COMO vendedor QUIERO realizar un pago con tarjeta PARA facilitar medios de pago

Scenario: Solicitud de autorizacion de pago exitosa 
Given una venta en curso con total de 18150.0
And tengo los datos de la tarjeta:
| DNI         | Numero de Tarjeta | Codigo de seguridad | Fecha vencimiento | Nombre titular |
|43900123	  |1234 5678 9102 3456|	 123               |09/25              | Fernando Alonso|
When solicito autorizacion de pago al sistema externo de pago con tarjeta
Then la solicitud pasa al estado de "Aprobado"


