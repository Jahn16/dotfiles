if status is-interactive
    # Commands to run in interactive sessions can go here
end

abbr -a vim nvim

alias ls='eza --icons --color=auto'
alias la='eza -a'
alias ll='eza -alF'

fish_add_path /usr/local/go/bin

starship init fish | source
enable_transience
