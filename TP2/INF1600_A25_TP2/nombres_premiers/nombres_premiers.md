Nombres premiers
================

**ID**: 78a7ffae-3e84-49c6-99ed-8968803fecdc  

**Énoncé**:  

Écrivez un programme qui détermine si le nombre `n` est premier ou non.  

Pour trouver un diviseur, commencez par vérifier si le nombre entré est divisible par 2.  
Sinon, essayez de le diviser par les nombres impairs entre 3 et  
$$
\sqrt{n}
$$  
et arrêtez-vous au plus petit diviseur trouvé.  

Vous devez afficher **1** si `n` est premier, et **0** sinon.  

**Résultat attendu**: afficher (print) 1 si `n` est premier, et 0 sinon.  

**Exemple 1:**  

Entrée : `n = 7`  
Sortie : `1`  
Explication : 7 est premier car ses seuls diviseurs positifs sont 1 et 7.  

**Exemple 2:**  

Entrée : `n = 10`  
Sortie : `0`  
Explication : 10 n'est pas premier car il est divisible par 2 et 5.  

**Astuce**: on peut éviter de calculer la racine carrée en utilisant la condition :  
`d * d <= n`.
