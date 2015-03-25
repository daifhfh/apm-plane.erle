sudo cp service/plane.service /lib/systemd/system/
systemctl daemon-reload
sudo systemctl start plane.service
echo "APM:Plane app started"
