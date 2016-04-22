      apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927
      echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list
      apt-get update
      apt-get  install -y mongodb mongodb-server mongodb-clients mongodb-dev
      sed -i "s/bind_ip = .*/bind_ip = 0.0.0.0/" /etc/mongod.conf
      printf "\nexport MONGO_URL=mongodb://localhost:27017/meteor\n" >> .bash_profile
      chown vagrant:vagrant .bash_profile
      service mongodb restart
      update-rc.d mongodb defaults


