# Displaying Hosted Website on Ubuntu Server

## Objective

This documentation outlines the process of displaying a hosted website on an Ubuntu server using Apache as the web server.

## Configuration

Apache was installed and configured on the Ubuntu server to host the website. Website files (`index.html`, `style.css`, `script.js`) were uploaded to the `/var/www/html/` directory.

![Result of LAMP installation](<Displaying Hosted Website on Ubuntu Server/Displaying Hosted Website on Ubuntu Server - Result of LAMP installation.PNG>)

## Starting Apache

The Apache service was initiated using the command:
```bash
sudo systemctl start apache2
```


## Accessing the Website

To view the website, enter the server's IP address or domain name in a web browser (e.g., `http://server_ip_address` or `http://example.com`).

![Accessing the Website](<Displaying Hosted Website on Ubuntu Server/Displaying Hosted Website on Ubuntu Server - Web Server Result.PNG>)<br>
![Login Page](<Displaying Hosted Website on Ubuntu Server/Displaying Hosted Website on Ubuntu Server - Login Page.PNG>)<br>
![Registration Page](<Displaying Hosted Website on Ubuntu Server/Displaying Hosted Website on Ubuntu Server - Registration Page.PNG>)<br>
![Result after access](<Displaying Hosted Website on Ubuntu Server/Displaying Hosted Website on Ubuntu Server - Result after access.PNG>)

## Verification

Upon accessing the URL, the website should load correctly, displaying its content, CSS styles, and JavaScript functionality.

## Maintenance

Regular maintenance involves updating website content, securing server configurations, and monitoring Apache logs (`/var/log/apache2/error.log`) for potential issues.

## Conclusion

Following these steps ensures a hosted website can be effectively displayed on an Ubuntu server using Apache, providing a functional web presence. This documentation serves as a straightforward guide for managing web server environments efficiently.