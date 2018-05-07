build:
	docker build -t dummy-http-server .

run:
	docker run --rm -t -p 4000:4000 dummy-http-server
