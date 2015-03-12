ifdef LIMIT
	ARGS += -l $(LIMIT)
endif

ifndef INVENTORY
	INVENTORY = inventory
endif

ARGS += -i $(INVENTORY)

all: $(INVENTORY) playbook.yml
	ansible-playbook playbook.yml $(ARGS)
