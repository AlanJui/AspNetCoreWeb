# 操作指引

為能正常操作以下「步驟」，請依據「事前準備」章節，備妥應安裝之軟體套件。

1. 下載專案檔案 

```
$ git clone git@github.com:AlanJui/AspNetCoreWeb.git
```

2. 進入專案資料夾

```
$ cd AspNetCoreWeb
```

3. 為 Client 端用 Lib ，進行安裝
```
$ bower install
``` 

4. 為 ASP.NET Core Web App 安裝所需之套件
```
$ dotnet restore
```

5. ASP.NET Core Web App 「發行作業」（為 Docker Build 做準備）
```
$ dotnet publish -o out
```

6. 建置 Docker Image
```
$ docker build -f Dockerfile.local -t asp-net-core-web .
```

7. 執行 Docker Container
```
$ docker run --rm -p 8000:80 asp-net-core-web
```

8. 使用 Web 瀏覽器，瀏覽網址： http://localhost:8000

---

# 佈署到 Heroku

1. 登入 Heroku Container
```
$ heroku container:login
```

2. 建立 Heroku App
```
$ heroku create <HerokuApp>
```

3. ASP.NET Core Web App 「發行作業」
```
$ dotnet publish -c Release -o out
```

4. 佈署到 Heroku 平台
```
$ heroku container:push web
```

5. 執行 Heroku App
```
$ heroku open -a <HerokuApp>
```

【Heroku參考】： https://ccc-asp-net-core-app.herokuapp.com/


【參考文件】： https://devcenter.heroku.com/articles/container-registry-and-runtime

# 事前準備

## ASP.NET Core Web App / API

 - .NET Core SDK (參考： https://www.microsoft.com/net/core )
 - NodeJS 
 - Bower
 - Docker Community Edition V 17.06.0 （參考： https://www.docker.com/ ）

## Heroku

 - Heroku CLI
 - heroku-container-registry 

1. 安裝 Heroku CLI

參考文件： https://devcenter.heroku.com/articles/heroku-cli


2. 安裝 Heroku 所需之 container-registry plugin：
```
$ heroku plugins:install heroku-container-registry
```
