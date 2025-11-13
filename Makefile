export-requirements:
	uv export > flows/requirements.txt


build-image:
	docker build --platform linux/amd64 -t dev-prefect-worker .
	docker tag dev-prefect-worker:latest 713172419298.dkr.ecr.ap-southeast-2.amazonaws.com/dev-prefect-worker:latest
	docker push 713172419298.dkr.ecr.ap-southeast-2.amazonaws.com/dev-prefect-worker:latest
