import itertools
import string
import time
import getpass

def brute_force_demo(secret, max_length=5, print_attempts=False):
    # Fases de complejidad
    phases = [
        ("Solo números", string.digits),
        ("Números + minúsculas", string.digits + string.ascii_lowercase),
        ("Números + minúsculas + mayúsculas", string.digits + string.ascii_lowercase + string.ascii_uppercase),
        ("Todo + símbolos", string.digits + string.ascii_lowercase + string.ascii_uppercase + string.punctuation)
    ]

    total_attempts = 0
    global_start = time.perf_counter()

    for phase_name, charset in phases:
        print(f"\n=== Fase: {phase_name} ===")
        print(f"Caracteres posibles: {len(charset)}")

        for length in range(3, max_length + 1):
            print(f"\nProbando longitud {length}...")

            for attempt in itertools.product(charset, repeat=length):
                guess = ''.join(attempt)
                total_attempts += 1
                
                if print_attempts:
                    print(f"Intento {total_attempts}: {guess}")

                if guess == secret:
                    print("\n¡Contraseña encontrada!")
                    total_time = time.perf_counter() - global_start
                    print(f"Texto secreto: {guess}")
                    print(f"Intentos totales: {total_attempts}")
                    print(f"Tiempo total: {total_time:.2f} segundos")
                    return

    print("\nNo se encontró la contraseña dentro de los límites definidos.")


if __name__ == "__main__":
    secret_text = getpass.getpass("Introduce el texto secreto (longitud: 3-5): ")[:5]
    verbose = not (input("Mostrar cada intento (S/n)? ") == 'n')
    brute_force_demo(secret_text, max_length=5, print_attempts=verbose)