import os
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Welcome to the Wisecow Application!"

if __name__ == "__main__":
    # Use an environment variable for the port, or default to 5001
    port = int(os.environ.get("PORT", 5001))
    app.run(host="0.0.0.0", port=port)
