# Test Container Backend-Frontend

This is a simple project to test the connection between a frontend and a backend application running in separate containers.

## Project Structure

- `backend/`: Contains a simple Python Flask application.
  - `app.py`: The main application file.
  - `Dockerfile`: To build the backend container.
  - `requirements.txt`: Python dependencies (Flask, Flask-Cors, gunicorn).
- `frontend/`: Contains a simple HTML frontend.
  - `index.html`: The main frontend file.
  - `Dockerfile`: To build the frontend container.

## How it works

The frontend is a simple HTML page served by Nginx that makes a request to the backend's `/api/status` endpoint and displays the result. The backend is a Python Flask application served by gunicorn.

Both containers are configured to run on port 8080.

## Important

The backend URL is hardcoded in the `frontend/index.html` file. You need to replace the placeholder URL with the actual URL of your deployed backend.

```html
<script>
    document.addEventListener('DOMContentLoaded', function() {
        // IMPORTANT: Replace this URL with your deployed backend's Cloud Run URL
        const backendUrl = 'https://teste-backend-523793487257.us-central1.run.app/api/status';
```
