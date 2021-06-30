echo "Creating mjpg-streamer.service"

cp mjpg-streamer-template.service mjpg-streamer.service
sed -i "s|PWD|$(pwd)/mjpg-streamer-experimental|g" mjpg-streamer.service

echo "Creating symlink to /etc/systemd/system/"
sudo ln -s $(pwd)/mjpg-streamer.service /etc/systemd/system/mjpg-streamer.service

echo "Enabling and starting mjpg-streamer service"
sudo systemctl daemon-reload
sudo systemctl enable mjpg-streamer
sudo systemctl start mjpg-streamer

