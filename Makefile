DOTFILES_EXCLUDES := .git .gitignore .gitmodules . ..;
DOTFILES_TARGET := $(wildcard .??*)
DOTFILES_DIR := $(DIR)
DOTFILES_FILES := $(filter-out $(DOTFILES_EXCLUDES), $(DOTFILES_TARGET))
NIXOS_DIR := ./nixos
NIXOS_FILES := $(wildcard $(NIXOS_DIR)/*)

deploy:
	@$(foreach val, $(DOTFILES_FILES), echo $(val);)
	@$(foreach val, $(DOTFILES_FILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)
#	@$(foreach val, $(NIXOS_FILES), echo $(val);)
#	@$(foreach val, $(NIXOS_FILES), ln -sfnv $(abspath $(val)) /etc/nixos/$(notdir $(val));)

init:
	@$(foreach val, $(wildcard ./etc/init/*.sh), zsh $(val);)
