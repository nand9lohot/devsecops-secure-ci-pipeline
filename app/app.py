from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route("/")
def home():
    return "DevSecOps Security Lab"

@app.route("/ping")
def ping():
    host = request.args.get("host")
    return subprocess.getoutput(f"ping -c 1 {host}")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)