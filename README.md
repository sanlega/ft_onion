# 🚀 ft_onion - Tor Hidden Service and Nginx Docker 🚀

This repository provides you with a Docker setup that includes a **Tor hidden service**, **Nginx** server, and **OpenSSH** server. The Dockerfile sets up the environment and necessary configurations to host a simple static website on the Tor network. 🌐

## 📦 Contents

The repository contains the following files:

- `Dockerfile`: The Dockerfile to build the container image.
- `Nginx.conf`: Nginx server configuration.
- `sshd_config`: OpenSSH server configuration.
- `torrc`: Tor hidden service configuration.
- `index.html`: A simple static HTML file to serve as the homepage of your website.

## 🏗️ Build & Run

To build and run the Docker container, follow these steps:

1. Clone the repository:
   ```
   git clone https://github.com/your_username/ft_onion.git
   cd ft_onion
   ```

2. Build the Docker image:
   ```
   docker build -t ft_onion .
   ```

3. Run the Docker container:
   ```
   docker run -d -p 80:80 -p 4242:4242 -p 9050:9050 --name ft_onion-container ft_onion
   ```

4. Access your Tor hidden service:
   - Use the Tor Browser to visit your website at the `.onion` address generated by the hidden service. You can find this address in the `hostname` file within `/var/lib/tor/my_website/` in the container.

## 🛠️ Customize

To customize the website or configurations, you can modify the files in this repository and rebuild the Docker image. For example, you can replace the `index.html` file with your own static HTML file to customize your website.

## 📝 Note

This setup is intended for educational and experimental purposes only. Be sure to follow Tor and web hosting best practices to ensure the security and privacy of your website and its visitors.

Happy experimenting! 🎉
