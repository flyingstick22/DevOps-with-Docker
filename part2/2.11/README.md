## Super simple Flask-application running in "debug mode" inside the container

1. I created a flask application (app.py). Debug mode set to "True", running locally in port 8000.
2. The dockerfile includes Python and Flask installations and CMD starts the application (Note! I just installed Flask directly without using requirements.txt which would be the right way to install all needed Python dependencies)
3. Docker-compose.yml file deploys the image and exposes port 8000 for local use. Volumes ````./:/app```` enables to modify app.py locally.

Commands:

```docker compose up --build```

check the output at ````localhost:8000```` from your browser (or ````curl localhost:8000```` from CLI)

By modifying app.py (return text) and saving the file, changes are automatically deployed without stoping and starting the container.

