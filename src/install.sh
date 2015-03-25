sudo cp service/plane.service /lib/systemd/system/
systemctl daemon-reload
sudo systemctl enable copter.service
echo "APM:Plane app enabled"
