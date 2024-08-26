def main():
    with open ('/home/jade/aliases.sh', 'r') as base:
        with open ('aliases.sh', 'w+') as backup:
            for line in base.readlines():
                backup.write(line)
    
if __name__ == '__main__':
    main()