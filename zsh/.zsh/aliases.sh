# Use colors in coreutils utilities output
alias ls='ls --color=auto'
alias grep='grep --color'

# ls aliases
alias ll='ls -lah'
alias la='ls -A'
alias l='ls'

# Aliases to protect against overwriting
alias cp='cp -i'
alias mv='mv -i'

# Mirror stdout to stderr, useful for seeing data going through a pipe
alias peek='tee >(cat 1>&2)'

#claude aliases
alias opus46='claude --model claude-opus-4-6\[1M\] --dangerously-skip-permissions'
alias opus46-strict='claude --model claude-opus-4-6\[1M\]'
alias claude-dng='claude --dangerously-skip-permissions'
