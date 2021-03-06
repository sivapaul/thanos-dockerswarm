# Thanos + Docker Swarm
## Thanos Components

    Sidecar: connects to Prometheus, reads its data for query and/or uploads it to cloud storage.
    Store Gateway: serves metrics inside of a cloud storage bucket.
    Compactor: compacts, downsamples and applies retention on the data stored in cloud storage bucket.
    Receiver: receives data from Prometheusâ€™ remote-write WAL, exposes it and/or upload it to cloud storage.
    Ruler/Rule: evaluates recording and alerting rules against data in Thanos for exposition and/or upload.
    Querier/Query: implements Prometheus' v1 API to aggregate data from the underlying components.

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
# to create a ec2 instance in AWS with autoapprove 
make tf-destroy-ap
# to install docker and docker-compose
make an-dc-install
# to copy compose module to remote server
make an-dc-up
```
