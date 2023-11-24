IS_TEST=true

# IS_TESTがtrueの場合は実行対象をisuansibleに限定する
ifeq ($(IS_TEST),true)
	LIMIT_OPTION=--limit isuansible
else
	LIMIT_OPTION=
endif

ANSIBLE_PLAYBOOK=ansible-playbook -i hosts.yml

.PHONY: backup
backup:
	$(ANSIBLE_PLAYBOOK) backup.yml $(LIMIT_OPTION)

.PHONY: sshkeys
sshkeys:
	$(ANSIBLE_PLAYBOOK) sshkeys.yml $(LIMIT_OPTION)

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
