# @Copyright by Holm Spitzer
#
_service () {
    local cur prev dirs 
    dirs="/etc/rc.d /usr/local/etc/rc.d"
    COMPREPLY=()
    cur=${COMP_WORDS[COMP_CWORD]}
    prev=${COMP_WORDS[COMP_CWORD-1]}
    if [ "${prev}" != "service" ]; then
        for d in ${dirs}; do
            if [ -e "${d}/${prev}" ]; then
                local extracmds=$(cat ${d}/${prev}|grep extra_commands|cut -d'"' -f2)
            fi
        done
        local cmds="start stop restart status rcvar ${extracmds}"
        COMPREPLY=( $( compgen -W '${cmds}' -- $cur ) )
        return 0
    fi
    COMPREPLY=( $( compgen -W '$( service -l )' -- $cur ) )
    return 0
}

complete -F _service service
