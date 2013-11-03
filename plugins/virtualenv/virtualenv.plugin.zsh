function matrix() {
    if [ -f "ENV/bin/activate" ]; then
        source ENV/bin/activate
    elif [ -f "ENV/Scripts/activate" ]; then
        source ENV/Scripts/activate
    fi
}

function virtualenv_prompt_info(){
  if [[ -n $VIRTUAL_ENV ]]; then
    printf "%s[%s] " "%{${fg[yellow]}%}" ${${VIRTUAL_ENV}:t}
  fi
}

# disables prompt mangling in virtual_env/bin/activate
# export VIRTUAL_ENV_DISABLE_PROMPT=1
