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
