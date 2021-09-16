## Thanos + Docker Swarm
thanos/bucket_config.yaml

## Configuration changes
| File Location             | Description                                                |
| ------------------------- | ---------------------------------------------------------- |
| thanos/bucket_config.yaml | Change the values of your choice                           |
| nginx/nginx.conf          | Change port or app names if you are editing docker compose |
| grafana/config.monitor    | Change the value of your choice                            |
| grafana/datasource.yml    | Change thanos query end point if docker compose modified   |
| alertmanager/config.yml   | Modify alermanager hooks according to your need            |


## Run swarm cluster
```bash
git clone https://github.com/sivapaul/thanos-dockerswarm.git
cd thanos-dockerswarm
docker-compose up -d
```