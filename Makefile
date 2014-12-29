#docker external/internal port
p:='80:5000'
#docker image ID
d:='magic/server'
#docker name
n:='magic-server'

build:
	docker build -t $(d) .

kill:
	docker kill $(n)
	docker rm $(n)

run:
	docker run -p $(p) --name=$(n) -d $(d) 

restart:
	docker kill $(n)
	docker rm $(n)
	docker run -p $(p) --name=$(n) -d $(d) 

all:
	build;
