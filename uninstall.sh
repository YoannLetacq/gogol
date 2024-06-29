
### Exemple de fichiers `uninstall.sh` et `uninstall.bat`

#### `uninstall.sh` :
```sh
# uninstall.sh
#!/bin/bash

# Function to uninstall on Linux and macOS
uninstall_unix() {
    # Remove the binary from /usr/local/bin
    sudo rm /usr/local/bin/gogol

    echo "Gogol has been uninstalled successfully!"
}

# Detect the platform
case "$(uname -s)" in
    Linux*)     uninstall_unix;;
    Darwin*)    uninstall_unix;;
    *)          echo "Unsupported OS"; exit 1;;
esac
