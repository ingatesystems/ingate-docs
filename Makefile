.DEFAULT_GOAL := fuego-ansible

fuego-ansible:
	[ -d docs/ansible/fuego/html ] && rm -rf docs/ansible/fuego/html
	mkdir -p docs/ansible/fuego/html
	(cd docs/ansible/fuego && ./build.sh)

clean:
	$(RM) -rf docs/ansible/fuego/build
	$(RM) -rf docs/ansible/fuego/rst
	$(RM) -rf docs/ansible/fuego/temp-rst

all: clean fuego-ansible
