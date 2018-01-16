# Compile zsh text files for better performance
function zsh_recompile {
    autoload -U zrecompile
    rm -f ~/.zsh/*.zwc
    [[ -f ~/.zshrc ]] && zrecompile -p ~/.zshrc
    [[ -f ~/.zshrc.zwc.old ]] && rm -f ~/.zshrc.zwc.old

    for f in ~/.zsh/**/*.zsh; do
        [[ -f $f ]] && zrecompile -p $f
        [[ -f $.zwc.old ]] && rm -f $f.zwc.old
    done

    [[ -f ~/zcompdump ]] && zrecompile -p ~/.zcompdump
    [[ -f ~/.zcompump.zwc.old ]] && rm -f ~/.zcompdump.zwc.old

    source ~/.zshrc
}

# Print out a nicely formatted and coloured path
path() {
    echo $PATH | tr ":" "\n" | \
        awk "{ sub(\"/usr\", \"$fg_no_bold[green]/usr$reset_color\"); \
            sub(\"/bin\", \"$fg_no_bold[blue]/bin$reset_color\"); \
            sub(\"/opt\", \"$fg_no_bold[cyan]/opt$reset_color\"); \
            sub(\"/sbin\", \"$fg_no_bold[magenta]/sbin$reset_color\"); \
            sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
            print }"
}
