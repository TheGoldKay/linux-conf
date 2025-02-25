import os 

def main():
    shell = os.environ.get('SHELL').split('/')[-1]
    settings = ''
    if shell == 'bash':
        settings = ".bashrc"
    elif shell == 'zsh':
        settings = ".zshrc"
    else:
        raise Exception("Supports Bash & Zsh, are you using something else?")
    
    with open(os.path.join(os.path.expanduser('~'), settings), 'r') as base:
        with open(f"{shell}rc", 'w+') as backup:
            for new_line in base.readlines():
                backup.write(new_line)


if __name__ == '__main__':
    main()
