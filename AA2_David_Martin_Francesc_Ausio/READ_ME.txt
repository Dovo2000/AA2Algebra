Treball realitzat per: David Mart�n Ballesta i Francesc Ausi� Navarro.

Per a moure el player utilitzar les tecles WASD. 
La demostraci� comen�a autom�ticament.

La intenci� inicial al tercer nivell era la de aplicar una for�a de repulsi� desde el player cap els enemics.
Per� no hem sigut capa�os, en el seu lloc hem aolicat una for�a contr�ria a la veelocitat dels enemics, fent un efecte de congelaci�.

Hem implementat les nostres pr�pies matrius de transformacions homog�nies.
Al inici intent�bem multiplicar les matrius per la posici� de les particules, 
pero al veure que no ens ensortiem vam descobrir una funci� de processing (applyMatrix();) amb la que podem aplicar les nostres matrius al pla y al espai sense necessitat d'utilitzar les funcions de transformacions homog�nies de processing.

Gaudeix de pla pr�ctica i gr�cies per l'atenci�.

 