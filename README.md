# basic-server-image
Пример простейшего пакета для Docker:
- Dockerfile - конфиг описывайщий docker, что делать
  - RUN - выполняет при сборке пакета
  - CMD - выполняет при запуске внутри контейнера
- .github/workflows/docker-publish.yml - action для публикации пакета в GitHub Packages
