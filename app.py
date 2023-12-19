from flask import Flask, render_template

app = Flask(__name__)

@app.route("/", methods=["GET"])
def code():
    context = {
        "message": "Paste your Python code here 🐍",
    }
    return render_template("code_input.html", **context)