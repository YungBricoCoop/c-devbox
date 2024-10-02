# devc-container

Run the container :

```sh
docker compose up -d --build
```

Connect to the container :

```sh
docker exec -it gcc_c zsh
```

Compile the example c++ :

```sh
cd /code/cpp
gcc main.cpp -o main
```
