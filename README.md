# kbengine_docker
A [KBEngine](https://github.com/kbengine/kbengine) docker image.

## Environment
- Centos 7
- KBEngine v0.8.2

## Required
- MySQL
	- [Install MySQL via docker](https://github.com/diyan/mycli-docker)

- [mycli(Optional)](https://github.com/diyan/mycli-docker)
	- A terminal client for MySQL with autoCompletion and syntax highlighting


## Run
`
docker run --rm -it --name=server --link=mysql:mysql miles990/kbengine_docker
`


## License

[MIT](http://opensource.org/licenses/MIT)