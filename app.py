from flask import Flask, render_template

app = Flask(__name__)

placeholder_code = "print('Hello, World!')"

@app.route("/", methods=["GET"])
def code():
    context = {
        "message": "Paste your Python code here 🐍",
        "code": placeholder_code,
    }
    return render_template("code_input.html", **context)