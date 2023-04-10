````
% docker run -p 127.0.0.1:8080:8080 portexercise
WARNING: The requested image's platform (linux/amd64) does not match the detected host platform (linux/arm64/v8) and no specific platform was requested
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2023/04/10 - 12:12:31 | 200 |       6.314ms |      172.17.0.1 | GET      "/"
[GIN] 2023/04/10 - 12:12:31 | 200 |         686µs |      172.17.0.1 | GET      "/favicon.ico"
````

Message in the browser (localhost:8080)
````
{"message":"You connected to the following path: /","path":"/"}


