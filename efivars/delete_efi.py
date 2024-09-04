import os 

def delete_efi_variable(variable_name):
    # Path to the efivarfs
    efi_var_path = f"/sys/firmware/efi/efivars/{variable_name}"
    
    try:
        os.remove(efi_var_path)
        #os.system(f"sudo rm -f {efi_var_path}")
        print(f"EFI variable {variable_name} deleted.")
    except FileNotFoundError:
        print(f"EFI variable {variable_name} not found.")
    except PermissionError:
        print("Permission denied. Try running as root.")

if __name__ == "__main__":
    os.system("df -h /sys/firmware/efi/efivars")
    before = os.popen("df -h /sys/firmware/efi/efivars").read()
    with open("efi_vars.txt", "r") as f:
        for var in map(str.strip, f):
            delete_efi_variable(var)
    print()
    print("Before efi variable deletion: ")
    print(before)
    print("After efi variable deletion: ")
    os.system("df -h /sys/firmware/efi/efivars")