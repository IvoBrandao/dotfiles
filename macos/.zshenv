. "$HOME/.cargo/env"

# Switch to an arm64e shell by default
if [ `machine` != arm64e ]; then
    echo 'Execing arm64 shell'
    exec arch -arm64 zsh
fi

alias ll='ls -la'
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"
