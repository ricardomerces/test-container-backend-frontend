from flask import Flask, jsonify
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

@app.route('/api/status')
def get_status():
    return jsonify({"status": "ok", "message": "Backend is running!"})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
