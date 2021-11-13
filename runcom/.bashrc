exec zsh

#Workaround preforking
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
source "$HOME/.cargo/env"
. "$HOME/.cargo/env"
