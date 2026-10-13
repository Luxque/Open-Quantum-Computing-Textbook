# Check if the language code is given from the user.

if [[ -z ${1:-} ]]; then
    echo "Usage: ./open.sh <language-code>" >&2
    exit 2
fi

# Handle the book directory.

SCRIPT_DIR="$(dirname -- ${BASH_SOURCE[0]})"
PROJECT_DIR="$(dirname -- $SCRIPT_DIR)"

lang_code="$1"
book_dir="$PROJECT_DIR/text/$lang_code"

# Check if the directory with the given language code exists.

if [[ ! -d $book_dir ]]; then
    echo "Error: Language code $lang_code not found." >&2
    exit 1
fi

# Execute `mdbook serve` with open flag enabled.

exec mdbook serve $book_dir --open --watcher=poll
