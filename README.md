# Portainer Setup Script

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

This repository contains a Bash script for the automated installation, update, and removal of Portainer – a lightweight
management UI for Docker.

## Table of Contents

- [Portainer Setup Script](#portainer-setup-script)
  - [Table of Contents](#table-of-contents)
  - [Overview](#overview)
  - [Installation \& Usage](#installation--usage)
    - [Direct Execution with curl](#direct-execution-with-curl)
    - [Direct Execution with wget](#direct-execution-with-wget)
  - [Support \& Contributions](#support--contributions)
  - [License](#license)

## Overview

The Portainer Setup Script simplifies the process of managing Portainer by offering:

-   **Installation** for first-time setups.
-   **Updates** to the latest version.
-   **Removal** if you no longer need Portainer.

The script performs necessary checks and provides interactive prompts to guide you through each step.

## Installation & Usage

You can run the setup script directly without cloning the repository using either `curl` or `wget`.

### Direct Execution with curl

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/AryaPaw/portainer-setup-script/master/portainer-setup.sh)
```

### Direct Execution with wget

```bash
bash <(wget -qO- https://raw.githubusercontent.com/AryaPaw/portainer-setup-script/master/portainer-setup.sh)
```

Alternatively, if you prefer cloning the repository, follow these steps:

1. **Clone the Repository**

    ```bash
    git clone https://github.com/AryaPaw/portainer-setup-script.git
    cd portainer-setup-script
    ```

2. **Make the Script Executable**

    ```bash
    chmod +x portainer-setup.sh
    ```

3. **Run the Script**

    ```bash
    ./portainer-setup.sh
    ```

## Support & Contributions

If you have any questions, suggestions, or issues, please open an issue or submit a pull request. Your contributions
help improve the project!

## License

This project is licensed under the [MIT License](./LICENSE).
