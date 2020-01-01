install_docker()
{
  chk1=`dpkg -l | grep 'docker'`
  if [ -z "$chk1" ]; then
    echo "Docker Install Start..."
    sudo apt-get install \
            apt-transport-https \
            ca-certificates \
            curl \
            gnupg-agent \
            software-properties-common -y
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io -y
    sudo usermod -aG docker $USER
  else
    echo -e "\n\nDocker Already Installed."
  fi
}

install_compose()
{
  chk2=`ls /usr/local/bin | grep 'docker-compose'`
  if [ -z "$chk2" ];  then
      if [ "$osname" == "CoreOS" ];then
        sudo mkdir -p /opt/bin
        sudo curl -L "https://github.com/docker/compose/releases/download/1.9.0/docker-compose-$(uname -s)-$(uname -m)" -o /opt/bin/docker-compose
        sudo chmod +x /opt/bin/docker-compose
      else
        echo "Docker-Compose Install Start..."
        # Docker Compose Install
        sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
        sudo chmod +x /usr/local/bin/docker-compose
        sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
      fi
    else
      echo -e "\n\nDocker-Compose Already Installed.\n"
    fi

}
install_docker
install_compose
