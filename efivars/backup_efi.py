import os

def copy_efi_variable(original_var):
    # Path to the original EFI variable
    original_path = f"/sys/firmware/efi/efivars/{original_var}"

    # Path for the new EFI variable
    new_path = f"/home/jade/Code/linux-conf/efivars/vars/{original_var}"
    
    try:
        # Read the original EFI variable
        with open(original_path, 'rb') as original_file:
            # Read the entire content of the EFI variable, including attributes
            data = original_file.read()

        # Write the new EFI variable with the same content
        with open(new_path, 'wb') as new_file:
            new_file.write(data)

        print(f"Successfully copied {original_var}")
    except FileNotFoundError:
        print(f"Original EFI variable {original_var} not found.")
    except PermissionError:
        print("Permission denied. Try running as root.")
    except Exception as e:
        print(f"Error occurred: {e}")


if __name__ == "__main__":
    # Replace '[UUID]' with the appropriate UUID associated with the variable
    with open("efi_vars.txt", "r") as f:
        for var in map(str.strip, f):
            copy_efi_variable(var)