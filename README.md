# [站在 Docker 的肩膀上，部署任何語言的 Web 應用到 Heroku](https://medium.com/starbugs/deploy-any-web-application-to-heroku-with-docker-b64b9b0eb93)

Build docker image
```
docker build -t api-server .
```

在 Heroku 上新增一個 app
```
heroku create <YOUR_APP_NAME>
heroku git:remote --app <YOUR_APP_NAME>
```

部署到 Heroku
```
heroku container:login
heroku stack:set container
heroku container:push web
heroku container:release web
```
