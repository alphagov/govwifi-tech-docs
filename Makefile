build:
	$(MAKE) stop
	docker-compose build

deploy:
	env
	$(MAKE) build
	docker-compose run app sh -c "cf login -u ${CF_USER} -p ${CF_PASS} -a https://api.cloud.service.gov.uk -s production && cf push govwifi-tech-docs"
	$(MAKE) stop

stop:
	docker-compose kill
	docker-compose rm -f

.PHONY: build deploy stop
