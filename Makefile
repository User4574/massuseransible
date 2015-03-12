ifdef LIMIT
	ARGS += -l $(LIMIT)
endif

ifndef INVENTORY
	ARGS += -i inventory
else
	ARGS += -i $(INVENTORY)
endif

all: inventory playbook.yml
	ansible-playbook playbook.yml $(ARGS)
