#!bash

_repo ()
{
    local subcommands="init abandon branch branches checkout cherry_pick diff download \
                       forall grep help info list manifest overview prune rebase \
                       selfupdate smartsync stage start status sync upload version"
                   
    local line=${COMP_LINE}
    echo $line
    cur=${COMP_WORDS[COMP_CWORD]}
    case "$cur" in
    *)
    COMPREPLY=( $( compgen -W '$subcommands' -- $cur ) )
    ;;
esac
}



complete -F _repo -o filenames repo
