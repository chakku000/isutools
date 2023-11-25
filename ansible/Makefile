IS_TEST=false

# IS_TESTがtrueの場合は実行対象をisuansibleに限定する
ifeq ($(IS_TEST),true)
	LIMIT_OPTION=--limit isuansible
else
	LIMIT_OPTION=
endif

LIMIT_OPTION=--limit s1

ANSIBLE_PLAYBOOK=ansible-playbook -i hosts.yml

.PHONY: backup
backup:
	$(ANSIBLE_PLAYBOOK) backup.yml $(LIMIT_OPTION)

.PHONY: sshkeys
sshkeys:
	$(ANSIBLE_PLAYBOOK) sshkeys.yml $(LIMIT_OPTION)

.PHONY: nginx
nginx:
	$(ANSIBLE_PLAYBOOK) nginx.yml $(LIMIT_OPTION)

.PHONY: nginx_setup
nginx_setup:
	$(ANSIBLE_PLAYBOOK) nginx_setup.yml $(LIMIT_OPTION)

.PHONY: build
build:
	$(ANSIBLE_PLAYBOOK) build.yml $(LIMIT_OPTION)

.PHONY: pull
pull:
	$(ANSIBLE_PLAYBOOK) gitpull.yml $(LIMIT_OPTION)

.PHONY: ping
ping:
	$(ANSIBLE_PLAYBOOK) ping.yml $(LIMIT_OPTION)

# >> Docker for test playbooks
.PHONY: docker-run
docker-run:
	docker run -itd --rm --name isuansible isutest:latest bash

.PHONY: docker-build
docker-build:
	docker build . -f test.Dockerfile -t isutest:latest
# << Docker for test playbooks
