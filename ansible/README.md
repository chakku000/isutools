# Ansible

# Edit before use

- `hosts.yml`
    - grep `TODO` comment
    - Enter the ip of the target server
        - `.all.hosts.s1.ansible_host`
        - `.all.hosts.s2.ansible_host`
        - `.all.hosts.s3.ansible_host`

# How to use
If you want to use test playbook with docker, change the Makefile `IS_TEST=false` to `IS_TEST=true`.

## Check connection
Connection check with ping module.

```
$ make ping
```

## Create backup
Create the backup of `/home/isucon` to `../workspace/backup`.

```
$ make backup
```

## Test
You can test playbooks with docker.


### Build test target docker image
```
$ make docker-build
```

### Run test target docker container
```
$ make docker-run
```
