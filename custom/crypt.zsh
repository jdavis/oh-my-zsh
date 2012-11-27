function load-crypt() {
    SECRET=~/.oh-my-zsh/custom/secret.gpg
    SECRET_SOURCE=~/.oh-my-zsh/custom/secret
    TEMPPREFIX='crypt'
    TEMPFILE=`mktemp -q /tmp/${TEMPPREFIX}.XXXXXXXXX`

    if [ $? -ne 0 ]; then
       echo "$0: Can't create temp file, exiting..."
       return 1
    fi

    if [ -z "$CRYPT_CIPHER" ]; then
        echo "To select a cipher, set \$CRYPT_CIPHER"
        return 1
    fi
    
    
    hash gpg 2> /dev/null || {
        echo "Oh dear, I require gpg to work. Consider installing it."
        return 1
    }

    gpg --no-mdc-warning --cipher-algo ${CRYPT_CIPHER} -d ${SECRET} >> ${TEMPFILE}
    source ${TEMPFILE}
    rm -f ${TEMPFILE}
}

function update-crypt() {
    hash gpg 2> /dev/null || {
        echo "Oh dear, I require gpg to work. Consider installing it."
        return 1
    }

    gpg --cipher-algo ${CRYPT_CIPHER} -c ${SECRET_SOURCE}
}
