import os 

def main():
    with open('/home/goldkay/.bashrc', 'r') as base:
        with open('bash_conf.sh', 'w+') as backup:
            for new_line in base.readlines():
                backup.write(new_line)


if __name__ == '__main__':
    main()