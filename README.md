# Kubernetes_Learning

install kubectl, minikube and docker.

#bash script.sh

start minikube cluster.

#minikube start


New Updated readme:

Create an ec2 instance using terraform. With main.tf file.

$ terraform init

$ terraform validate

$ terraform plan

$ terraform apply

Install ansible on linux control node.

$ sudo apt-get update

$ sudo apt-get install -y software-properties-common

$ sudo apt-add-repository ppa:ansible/ansible

$ sudo apt-get update

$ sudo apt-get install ansible -y

$ ansible --version

Now, create livenessprobe.yaml and readinessprobe.yaml file to create pods.

Start minikube cluster.

$ minikube start

$ kubectl create deploy livenessprobe --image busybox -o yaml --dry-run > livenessprobe.yaml

$ kubectl create -f livenessprobe.yaml

$ kubectl get all

$ kubectl get pods

$ kubectl get events

By checking pods continuously, we observe that the number of restarts keep increasing. The inability to execute any command mentioned in livelinessProbe indicates probe to be unhealthy. Therefore, kubernetes keeps restarting it.

For readiness probe:

$ kubectl delete deploy livenessprobe

$kubectl create -f readinessprobe.yaml

$ kubectl get all

$ watch kubectl get all

The pods created is not ready until 20s as the hello file is not created. Therefore, although the container is running, the pods does not show ready state as it detects the service is not ready yet.

