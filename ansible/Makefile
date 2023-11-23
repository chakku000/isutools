IS_TEST=true

ifeq ($(IS_TEST),true)
	LIMIT_OPTION=--limit isuansible
else
	LIMIT_OPTION=
endif


.PHONY: ping
ping:
	ansible-playbook -i hosts.yml ping.yml $(LIMIT_OPTION)

# >> Docker for test playbooks
.PHONY: docker-run
docker-run:
	docker run -itd --rm --name isuansible isutest:latest bash

.PHONY: docker-build
docker-build:
	docker build . -f test.Dockerfile -t isutest:latest
# << Docker for test playbooks
