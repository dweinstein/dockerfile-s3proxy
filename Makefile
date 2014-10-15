build:
	docker build -t s3proxy .
build-nocache:
	docker build --no-cache -t s3proxy .
run:
	docker run -t -i -p 8080:8080 s3proxy
