from tabulate import tabulate
import sys


def read_csv(filename: str) -> list[list[str]]:
    lines = None
    with open(filename, 'r') as file:
        lines = file.read().split('\n')[:-1]

    content = []
    for line in lines:
        word_pair = line.split(',')
        content.append(word_pair)

    return content

def print_table(content: list[list[str]]) -> None:
    headers = content[0]
    table = tabulate(
        content[1:], 
        headers = headers, 
        tablefmt = 'pipe',
        colalign = ['center'] * len(headers)
    )

    print(table)

    return


def main() -> None:
    if len(sys.argv) != 2:
        raise RuntimeError("There must be one argument for the file to parse.")
    
    filename = sys.argv[1]
    content = read_csv(filename)
    print_table(content)

if __name__ == '__main__':
    main()
