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

5. 為 Docker Build 做準備
```
$ dotnet publish -o out
```

6. 建置 Docker Image
```
$ docker build -t asp-net-core-web .
```

7. 執行 Docker Container
```
$ docker run --rm -p 8000:80 asp-net-core-web
```

8. 使用 Web 瀏覽器，瀏覽網址： http://localhost:8000

# 事前準備

 - .NET Core SDK (參考： https://www.microsoft.com/net/core )
 - NodeJS 
 - Bower
 - Docker Community Edition V 17.06.0 （參考： https://www.docker.com/ ）