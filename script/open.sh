# Check if the language code is given from the user.

if [[ -z ${1:-} ]]; then
    echo "Usage: ./open.sh <language-code>" >&2
    exit 2
fi

# Handle the book directory.

LANG_CODE="$1"
SCRIPT_DIR="$(dirname -- ${BASH_SOURCE[0]})"
PROJECT_DIR="$(dirname -- $SCRIPT_DIR)"
BOOK_DIR="$PROJECT_DIR/text/$LANG_CODE"

echo "BOOK_DIR: $BOOK_DIR" >&2

# Check if the directory with the given language code exist.

if [[ ! -d $BOOK_DIR ]]; then
    echo "Error: Language code $LANG_CODE not found." >&2
    exit 1
fi

# Execute `mdbook serve` with open flag enabled.

exec mdbook serve $BOOK_DIR --open --watcher=poll
exit 0
