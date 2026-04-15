from flask import Flask, request, jsonify

app = Flask(__name__)

# Health check route (optional but useful)
@app.route("/")
def home():
    return "Flask backend is running!"

# Main API route (receives data from Node frontend)
@app.route("/submittodoitem", methods=["POST"])
def submit():
    try:
        data = request.json

        print("Received data from frontend:")
        print(data)

        return jsonify({
            "status": "success",
            "message": "Data received successfully",
            "data": data
        }), 200

    except Exception as e:
        return jsonify({
            "status": "error",
            "message": str(e)
        }), 500


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
