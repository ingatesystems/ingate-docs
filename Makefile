.DEFAULT_GOAL := fuego-ansible

fuego-ansible:
	(cd build/fuego_ansible && ./build.sh)
	$(RM) -rf docs/ansible/fuego/html
	mkdir -p docs/ansible/fuego/html
	mv build/fuego_ansible/build/html/* docs/ansible/fuego/html

clean:
	$(RM) -rf build/fuego_ansible/build
	$(RM) -rf build/fuego_ansible/html
	$(RM) -rf build/fuego_ansible/rst
	$(RM) -rf build/fuego_ansible/temp-rst

all: clean fuego-ansible
