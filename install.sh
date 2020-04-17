kubectl create namespace monitoring


kubectl create -f prometheus/config-map.yml -n monitoring
kubectl create -f prometheus/cluster-role.yml -n monitoring
kubectl create -f prometheus/cluster-role-binding.yml -n monitoring
kubectl create -f prometheus/deployment.yml -n monitoring
kubectl create -f prometheus/service.yml -n monitoring


kubectl create -f grafana/config-map.yml -n monitoring
kubectl create -f grafana/deployment.yml -n monitoring
kubectl create -f grafana/service.yml -n monitoring

