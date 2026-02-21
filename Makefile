# TODO: Check file
AVAILABLE = dottmux

AVAILABLE_CLEAN = dotmux

.PHONY : all
all : all-available

.PHONY : clean
clean : clean-available
	rm -Rf ../extern-dist

.PHONY : check
check: check-xcompose

.PHONY : all-available
all-available :
	@echo -ne '\033[34mINFO:\033[0m '
	@echo -n 'Using targets: '
	@echo -ne '\033[32m'
	@echo -n $(AVAILABLE)
	@echo -e '\033[0m'
	@$(MAKE) $(AVAILABLE)

.PHONY : dottmux
dottmux :
	@git diff --no-index --quiet ./.tmux/.tmux.conf.local ./.tmux.conf.local; \
	retcode=$$?; \
	if [ $$retcode -eq  ]
	@echo -ne '\033[32m'
	@echo 'Changes'
	@echo -ne '\033[0m'
