FROM microsoft/dotnet:2.0-sdk
COPY src/Chat /app
WORKDIR /app
RUN ["dotnet", "restore", "--configfile", "NuGet.Config"]
RUN ["dotnet", "build"]
EXPOSE 5000/tcp
ENTRYPOINT ["dotnet", "run"]