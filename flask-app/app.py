from flask import Flask, jsonify, render_template, request, redirect
import json

app = Flask(__name__)

# API route
@app.route('/api')
def api():
    with open('data.json') as f:
        data = json.load(f)
    return jsonify(data)

# Form page
@app.route('/')
def home():
    return render_template('form.html')

# Submit form (store in JSON)
@app.route('/submit', methods=['POST'])
def submit():
    try:
        name = request.form['name']
        email = request.form['email']

        # Read existing data
        with open('data.json', 'r') as f:
            data = json.load(f)

        # Add new entry
        new_entry = {
            "name": name,
            "email": email
        }
        data.append(new_entry)

        # Write back to file
        with open('data.json', 'w') as f:
            json.dump(data, f, indent=4)

        return redirect('/success')

    except Exception as e:
        return f"Error: {e}"

# Success page
@app.route('/success')
def success():
    return render_template('success.html')

app.run(host='0.0.0.0', port=5000)
