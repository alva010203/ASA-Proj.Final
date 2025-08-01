import os
import sys
import subprocess

PASTAS = ["provedor", "cliente01", "cliente02", "cliente03"]

def up():
    print("Subindo containers...")
    for pasta in PASTAS:
        print(f">> Subindo {pasta}")
        subprocess.run(["docker-compose", "up", "-d"], cwd=pasta)

def down():
    print("Derrrubando os containers...")
    for pasta in reversed(PASTAS):
        print(f">> Derrubando {pasta}")
        subprocess.run(["docker-compose", "down"], cwd=pasta)

if len(sys.argv) != 2 or sys.argv[1] not in ("up", "down"):
    print(f"Uso: {sys.argv[0]} up|down")
    sys.exit(1)

if sys.argv[1] == "up":
    up()
else:
    down()