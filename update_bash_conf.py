import os 

with open('/home/jade/.bashrc', 'r') as f:
    with open('bash_conf.sh', 'w+') as f2:
        for new_line in f.readlines():
            f2.write(new_line)