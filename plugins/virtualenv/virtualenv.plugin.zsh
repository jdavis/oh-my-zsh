function matrix() {
    if [ -f "ENV/bin/activate" ]; then
        source ENV/bin/activate
    elif [ -f "ENV/Scripts/activate" ]; then
        source ENV/Scripts/activate
    fi
}
