Ceci est un readme.
L'objectif du projet est de tester NodeJS  / React 
Gestion avec un container Docker
Hébergement sur Google Cloud
Utilisation de Kubernetes ?

[Steps]
- Créer le container docker à partir d'une base nodeJS
- Utiliser docker-compose 
- Utiliser redis comme stockage
- Voir comment nodeJS et redis peuvent fonctionner ensemble

- déployer sur Google Cloud Container Engine ?
-- kubernetes
-- Activate Google Compute Engine API ?
-- Installation du Google Cloud SDK : https://cloud.google.com/sdk/
--- gcloud components install kubectl

https://kubernetes.io/docs/getting-started-guides/gce/
--- Activation : Google Compute Engine Instance Group Manager API
---- gcloud auth login
---- gcloud config set project profound-ship-105607

Use Google Cloud Container Registry:
eu.gcr.io/profound-ship-105607/cotopaxi:v1
docker tag cotopaxi:v1 eu.gcr.io/profound-ship-105607/cotopaxi:v1
gcloud docker -- push eu.gcr.io/profound-ship-105607/cotopaxi

installation de gcloud components alpha & beta
modification cluster/gce/configuration-default.sh => europe-west1-b

./kube-up.sh

nicolas@MBPRAD cluster $ ./kube-up.sh
... Starting cluster in europe-west1-b using provider gce
... calling verify-prereqs
... calling verify-kube-binaries
... calling kube-up
Project: profound-ship-105607
Zone: europe-west1-b
BucketNotFoundException: 404 gs://kubernetes-staging-af48993477-eu bucket does not exist.
Creating gs://kubernetes-staging-af48993477-eu
Creating gs://kubernetes-staging-af48993477-eu/...
+++ Staging server tars to Google Storage: gs://kubernetes-staging-af48993477-eu/kubernetes-devel

... stuck ... kubectl renvoie des erreurs constamment 

https://cloud.google.com/nodejs/
