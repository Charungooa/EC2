#!/bin/bash
sudo apt update
sudo apt install -y nginx
echo "billu tu sirf apna kaam kar bhai. yeh log samaj gaye hain ki tu inko haramkhori karne degi" | sudo tee /var/www/html/index.html
sudo systemctl start nginx