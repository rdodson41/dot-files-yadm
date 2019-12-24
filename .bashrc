#!/usr/bin/env bash

export GPG_TTY="$(tty)"
export NVM_DIR="${HOME}/.nvm"

if which brew > /dev/null && [[ -f "$(brew --prefix)/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh" ]]; then
  source "$(brew --prefix)/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh"
fi

if which brew > /dev/null && [[ -f "$(brew --prefix)/etc/bash_completion" ]]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

if which brew > /dev/null && [[ -f "$(brew --prefix)/etc/profile.d/z.sh" ]]; then
  source "$(brew --prefix)/etc/profile.d/z.sh"
fi

if [[ -e "${HOME}/.iterm2_shell_integration.bash" ]]; then
  source "${HOME}/.iterm2_shell_integration.bash"
fi

if [[ -f "${HOME}/.fzf.bash" ]]; then
  source "${HOME}/.fzf.bash"
fi

if [[ -s "${NVM_DIR}/nvm.sh" ]]; then
  source "${NVM_DIR}/nvm.sh"
fi

if [[ -s "$NVM_DIR/bash_completion" ]]; then
  source "$NVM_DIR/bash_completion"
fi

if [[ -f "${HOME}/.bashrc.d/aliases" ]]; then
  source "${HOME}/.bashrc.d/aliases"
fi

export PATH="${PATH}:${HOME}/.rvm/bin"
