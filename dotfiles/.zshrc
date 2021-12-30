# -- ZGen loading --
ZGENOM_DIR="${XDG_DATA_HOME:="$HOME/.local/share"}/zgenom";
ZGENOM_SOURCE="${ZGENOM_DIR}/zgen.zsh";
[ -d "$ZGENOM_DIR" ] || git clone https://github.com/jandamm/zgenom "$ZGENOM_DIR"
source $ZGENOM_SOURCE

# Check for plugin and zgenom updates every 7 days
zgenom autoupdate

if ! zgenom saved; then
    zgenom load djui/alias-tips
    zgenom load romkatv/powerlevel10k powerlevel10k
    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom load zsh-users/zsh-completions
    zgenom load zsh-users/zsh-autosuggestions

    zgenom oh-my-zsh
    zgenom oh-my-zsh plugins/sudo

    [ -z "$SSH_CONNECTION" ] && zgenom load zsh-users/fast-syntax-highlighting
    zgenom save
fi

#-- Zsh params --
CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="false"

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

COMPLETION_WAITING_DOTS="true"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh