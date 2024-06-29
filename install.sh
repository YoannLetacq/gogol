# install.sh
#!/bin/bash

# Function to install on Linux and macOS
install_unix() {
    # Compile the gogol binary
    go build -o gogol main.go

    # Move the binary to /usr/local/bin
    sudo mv gogol /usr/local/bin/

    # Ensure the binary is executable
    sudo chmod +x /usr/local/bin/gogol

    echo "Gogol has been installed successfully!"
}

# Detect the platform
case "$(uname -s)" in
    Linux*)     install_unix;;
    Darwin*)    install_unix;;
    *)          echo "Unsupported OS"; exit 1;;
esac
