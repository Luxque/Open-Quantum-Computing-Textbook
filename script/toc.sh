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
python_dir="SCRIPT_DIR/toc.py"

# Check if the directory with the given language code exists.

if [[ ! -d $book_dir ]]; then
    echo "Error: Language code $lang_code not found." >&2
    exit 1
fi

# Check if the TOC Python script exists.

if [[ ! -f $python_dir ]]; then
    echo "Error: Table of Contents Python script not found." >&2
    exit 1
fi

# Gather available chapter directories.

shopt -s nullglob
chapters=($book_dir/*/)

# Iterate and run TOC Python script for all chapters.

for chapter in ${chapters[@]}; do
    if [[ $chapter == $book_dir/misc/ ]]; then
        continue
    fi

    if ! python3 $python_dir $chapter; then
        echo "Error: Processing $chapter failed." >&2
        exit 1
    fi
done
