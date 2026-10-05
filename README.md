# Assignment 11: Docker

Name: Paolo Divino

## About this project

I used Create React App to create a webpage that displays
"Codin 1" inside an h1 tag.

The app runs in a Docker container and can be viewed at:
http://localhost:7775

## What you need

- Docker Desktop installed and running with Linux containers.
- The project files downloaded from this GitHub repository.
- An internet connection for the first build.

## Build the Docker image

Open a terminal in the project folder containing the Dockerfile.
Run this command:

docker build -t divino_paolo_assignment11 .

This builds an image containing the app and the tools it needs to run.

## Create and run the container

Run this command:

docker run -d --name divino_paolo_coding_assignment11 -p 127.0.0.1:7775:3000 divino_paolo_assignment11

This creates a container named divino_paolo_coding_assignment11
and starts the app in the background.

It connects port 7775 on my computer to port 3000 inside the container.

Open http://localhost:7775 in a browser.
The page should display "Codin 1". 

## How I created the React app

I used this command to create the starter project:

```powershell
npx.cmd create-react-app@5.1.0 coding-assignment11 --use-npm
```

Then I edited src/App.js to display this heading:

```html
<h1>Codin 1</h1>
```

These steps describe the original setup. You do not need to create
another React app to run this repository.

## Working directory inside Docker

My Dockerfile includes:

```dockerfile
WORKDIR /divino_paolo_site
```

This sets the folder inside the container where the app files are stored
and where commands run.

I checked the working directory with:

```powershell
docker exec divino_paolo_coding_assignment11 pwd
```

The result was:

```text
/divino_paolo_site
``` 

# for presentation