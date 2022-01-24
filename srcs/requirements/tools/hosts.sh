HOSTS_PATH=/etc/hosts
USER=kalexand

sudo chmod a+w ${HOSTS_PATH}
echo "# Inception42" >> ${HOSTS_PATH}
echo "127.0.0.1 ${USER}.42.fr" >> ${HOSTS_PATH}
echo "# Inception42" >> ${HOSTS_PATH}
sudo chmod a-w ${HOSTS_PATH}
