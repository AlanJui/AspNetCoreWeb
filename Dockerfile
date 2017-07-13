FROM microsoft/aspnetcore:1.1.2
WORKDIR /app

# dotnet publish -o out
COPY ./out .
ENTRYPOINT ["dotnet", "docker-01.dll"]

