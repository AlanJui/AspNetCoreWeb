FROM microsoft/aspnetcore:1.1.2
WORKDIR /app

# dotnet publish -o out
COPY ./out .

ENV PORT=80
CMD ASPNETCORE_URLS=http://*:$PORT dotnet docker-01.dll
