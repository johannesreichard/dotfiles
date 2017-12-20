# little helper for easier source
function source-easy() {
    [[ -f ${1} ]] && source ${1}
}


# If directory exists, add it to path
function ipath {
    dir="$1"

    if [ -d $dir ]; then
        export PATH="$PATH:$dir"
    fi
}

