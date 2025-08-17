#!/bin/bash
echo "Starting WordPress installation..."
kubectl delete -f mysql/mysql-pvc.yml

kubectl delete -f mysql/mysql-pv.yml
kubectl delete -f mysql/mysql-secret.yml
kubectl delete -f mysql/mysql-deployment.yml
kubectl delete -f mysql/mysql-svc.yml

kubectl delete -f wordpress/wordpress-secret.yml
kubectl delete -f wordpress/wordpress-deployment.yml
kubectl delete -f wordpress/wordpress-svc.yml

echo "WordPress installation completed successfully."