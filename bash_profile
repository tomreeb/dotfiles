#!/usr/bin/env bash

# configure prompt
export PS1="🍔  (\u):\w \$ "

# enable aws commands
complete -C aws_completer aws

# highlight root user
if [[ "${USER}" == "root" ]]; then
	userStyle="${red}";
else
	userStyle="${orange}";
fi;

# Highlight the hostname when connected via SSH.
if [[ "${SSH_TTY}" ]]; then
	hostStyle="${bold}${red}";
else
	hostStyle="${yellow}";
fi;
