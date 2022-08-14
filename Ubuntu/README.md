# Ubuntu

This script is intended for both 20.04 and 22.04 as it has version detection (which was required since few of my programs don't run on Wayland).

## Usage

### For running all configurations 

- Make the `run-all.sh` executable using `chmod` .

    ```
    chmod +x run-all.sh
    ```
- Run the script.

    ```
    ./run-all.sh
    ```

### For selective scripts

The available configuration scripts are 

| Script      | Actions                                    |
|-------------|--------------------------------------------|
| `apps.sh`   | Installation of my preferred applications  |
| `remove.sh` | Debloating the base installation of the OS |
| `vscext.sh` | Installing all my extensions for VS Code   |
| `git.sh`    | Setting up of my .gitconfig                |

To use 
- Make the script executable using `chmod`.
- Run the script.
