FROM mcr.microsoft.com/dotnet/aspnet:5.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /src
COPY ["ConcentradorBackend/ConcentradorBackend.csproj", "ConcentradorBackend/"]
RUN dotnet restore "ConcentradorBackend/ConcentradorBackend.csproj"
COPY . .
WORKDIR "/src/ConcentradorBackend"
RUN dotnet build "ConcentradorBackend.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ConcentradorBackend.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ConcentradorBackend.dll"]
