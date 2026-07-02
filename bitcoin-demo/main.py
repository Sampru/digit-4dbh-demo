import hashlib
import random
import string
import time


def generar_nonce(longitud=16):
    caracteres = string.ascii_letters + string.digits
    return ''.join(random.choice(caracteres) for _ in range(longitud))


def encontrar_hash(frase, cantidad_ceros):
    objetivo = "0" * cantidad_ceros
    intentos = 0
    inicio = time.time()

    while True:
        nonce = generar_nonce()
        texto = f"{frase}{nonce}"
        hash_resultado = hashlib.sha512(texto.encode()).hexdigest()
        intentos += 1

        print(f'Intento nº {intentos}: {hash_resultado}')

        if hash_resultado.startswith(objetivo):
            fin = time.time()
            return {
                "frase": frase,
                "nonce": nonce,
                "hash": hash_resultado,
                "intentos": intentos,
                "tiempo": fin - inicio
            }


if __name__ == "__main__":
    frase = input("Introduce una frase: ")
    cantidad_ceros = int(input("Introduce la cantidad de ceros iniciales: "))

    resultado = encontrar_hash(frase, cantidad_ceros)

    print("\n--- Resultado encontrado ---")
    print(f"Frase: {resultado['frase']}")
    print(f"Nonce: {resultado['nonce']}")
    print(f"Hash SHA512: {resultado['hash']}")
    print(f"Intentos: {resultado['intentos']}")
    print(f"Tiempo empleado: {resultado['tiempo']:.2f} segundos")