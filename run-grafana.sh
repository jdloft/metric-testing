echo "Type the initial password you would like set for the built in admin user:"
read adminpass

docker run --name grafana -d -v ~/grafana:/var/lib/grafana -p 3000:3000 -e "GF_SECURITY_ADMIN_PASSWORD=$adminpass" -e "GF_INSTALL_PLUGINS=grafana-clock-panel" grafana/grafana

echo "\nUsername: admin"
echo "Port: 3000"
