#!/bin/bash
echo "Starting WordPress installation..."
kubectl apply -f mysql/mysql-pv.yml
kubectl apply -f mysql/mysql-pvc.yml
kubectl apply -f mysql/mysql-secret.yml
kubectl apply -f mysql/mysql-deployment.yml
kubectl apply -f mysql/mysql-svc.yml

kubectl apply -f wordpress/wordpress-secret.yml
kubectl apply -f wordpress/wordpress-deployment.yml
kubectl apply -f wordpress/wordpress-svc.yml

echo "WordPress installation completed successfully."