# CentOS VueJS development environment

---

## Build docker image

```shell
docker-compose build
```

## Run docker container

You may want to change command in it.

```shell
docker-compose up -d
```

## Get into the container

```shell
docker exec -it vuejs-dev bash
```

## Create a VueJS project (inside container)

```shell
vue create <project name>
```

## Run project

```shell
npm install
npm run dev
```
