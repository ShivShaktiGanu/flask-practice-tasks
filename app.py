from flask import Flask, jsonify, render_template, request
import json
from pymongo import MongoClient

app = Flask(__name__)

# MongoDB connection
client = MongoClient("mongodb://localhost:27017/")
db = client.todo_db


# ---------------- API ROUTE ----------------
@app.route("/api")
def api():
    with open("data.json", "r") as file:
        data = json.load(file)
    return jsonify(data)


# ---------------- FORM ROUTE ----------------
@app.route("/", methods=["GET", "POST"])
def form():
    if request.method == "POST":
        return render_template("success.html")
    return render_template("form.html")


# ---------------- TODO SUBMIT ROUTE ----------------
@app.route("/submittodoitem", methods=["POST"])
def submit_todo():
    item_name = request.form.get("itemName")
    item_desc = request.form.get("itemDescription")

    data = {
        "name": item_name,
        "description": item_desc
    }

    # Insert into MongoDB
    db.items.insert_one(data)

    return "Todo item saved successfully!"


# ---------------- RUN APP ----------------
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
