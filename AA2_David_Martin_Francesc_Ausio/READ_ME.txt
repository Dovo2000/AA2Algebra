Treball realitzat per: David Martín Ballesta i Francesc Ausió Navarro.

Per a moure el player utilitzar les tecles WASD. 
La demostració comença automàticament.

La intenció inicial al tercer nivell era la de aplicar una força de repulsió desde el player cap els enemics.
Però no hem sigut capaços, en el seu lloc hem aolicat una força contrària a la veelocitat dels enemics, fent un efecte de congelació.

Hem implementat les nostres pròpies matrius de transformacions homogènies.
Al inici intentàbem multiplicar les matrius per la posició de les particules, 
pero al veure que no ens ensortiem vam descobrir una funció de processing (applyMatrix();) amb la que podem aplicar les nostres matrius al pla y al espai sense necessitat d'utilitzar les funcions de transformacions homogènies de processing.

Gaudeix de pla pràctica i gràcies per l'atenció.

 