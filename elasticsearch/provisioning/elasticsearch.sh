

echo "deb http://packages.elastic.co/elasticsearch/5.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-5.x.list
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
apt-get update && sudo apt-get install elasticsearch

printf "\nnetwork.bind_host: 0" >> /etc/elasticsearch/elasticsearch.yml
printf "\ndiscovery.zen.minimum_master_nodes: 1 " >> /etc/elasticsearch/elasticsearch.yml

sudo -i service elasticsearch start
