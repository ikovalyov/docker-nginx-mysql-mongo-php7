docker-machine start dev
docker-machine ssh dev "mkdir /home/docker/docker"
docker-machine ssh dev "mkdir /home/docker/documentRoot"
docker-machine ssh dev "sudo mount -t vboxsf -o rw,uid=1000,gid=1000 /home/docker56 /home/docker/docker"
docker-machine ssh dev "sudo mount -t vboxsf -o rw,uid=1000,gid=1000 /documentRoot /home/docker/documentRoot"
docker-machine ssh dev "docker start websites"
docker-machine ssh dev "docker start mongo"
docker-machine ssh dev "docker start mysql"
docker-machine ssh dev "docker start memcache"
docker-machine ssh dev "docker start influxdb"
docker-machine ssh dev "docker start php-fpm"
docker-machine ssh dev "docker start nginx"