//texto_sala = "Caspi: Hay cervezas que puedes recolectar, \nsegun vi la otra vez habia una llave cerca... \npero te recomiendo ir con cuidado, hay una presencia en la cocina..."
if (global.contador_llaves < 7) {
    texto_sala = "Caspi: Tienes " + string(global.contador_llaves) + " llaves";
} else {
    texto_sala = "Caspi: Ya tienes todas las llaves, sube...";
}

