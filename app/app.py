from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "CloudShip DevOps Project is Live 🚀"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
