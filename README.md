# DaVinci Resolve Ubuntu 24 Dependency Installer

This project provides a script to install the necessary dependencies for running DaVinci Resolve on Ubuntu 24. DaVinci Resolve may lack some essential packages when installed on Ubuntu 24, and this script aims to resolve these issues by downloading and installing the required packages.

## Features

- Automatically downloads and installs missing dependencies for DaVinci Resolve on Ubuntu 24.
- Ensures DaVinci Resolve runs smoothly by addressing package dependencies.

## Prerequisites

- Ubuntu 24
- wget
- dpkg (comes pre-installed with Ubuntu)

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/resolve-dependency-installer.git
    cd resolve-dependency-installer
    ```

2. Make the script executable:
    ```bash
    chmod +x install.sh
    ```

3. Run the script with sudo to install the dependencies:
    ```bash
    sudo ./install.sh
    ```

## Packages Installed

The script will download and install the following packages:

- libpango-1.0-0
- libpangoft2-1.0-0
- libpangocairo-1.0-0
- libgdk-pixbuf-2.0-0

These packages are necessary for DaVinci Resolve to run on Ubuntu 24.


## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

1. Fork the repository
2. Create a new branch (`git checkout -b feature-branch`)
3. Make your changes
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin feature-branch`)
6. Create a new Pull Request

## Acknowledgements

- Thanks to the Ubuntu and DaVinci Resolve communities for their support and documentation.
