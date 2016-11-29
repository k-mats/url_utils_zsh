function encode-url() {
    if (($# < 1)) then
        echo "No input to be encoded."
    else
        echo ''
        echo $1 | nkf -WwMQ | tr = %
    fi
}

function decode-url() {
    if (($# < 1)) then
        echo "No input to be encoded."
    else
        echo ''
        echo $1 | nkf -w --url-input
    fi
}

function parse-query() {
    if (($# < 1)) then
        echo "No input to be parsed."
    else
        tmp=${1//'&'/$'\n&'}
        echo ''
        echo ${tmp//'?'/$'\n?'}
    fi
}

function parse-and-decode-url() {
    if (($# < 1)) then
        echo "No input to be parsed."
    else
        tmp=`parse-query $1`
        decode-url $tmp
    fi
}
