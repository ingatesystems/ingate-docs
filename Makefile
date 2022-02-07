.DEFAULT_GOAL := fuego-ansible

fuego-ansible:
	[ -d ansible/fuego/html ] && rm -rf ansible/fuego/html
	mkdir -p ansible/fuego/html
	(cd ansible/fuego && ./build.sh)

clean:
	$(RM) -rf ansible/fuego/build
	$(RM) -rf ansible/fuego/rst
	$(RM) -rf ansible/fuego/temp-rst

all: clean fuego-ansible
