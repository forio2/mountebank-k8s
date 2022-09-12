# mountebank-loadtest
Mountebank 

    First, let's create an default-imposters.json file
        - static
        - dynamic
    Try to run mountebank in your computer:
        //create
            npm install -g mountebank
        //run the mountebank
            mb --configfile default-imposters.json --allowInjection
            
 After finish the imposter file, create Dockerfile to push the image to Docker Hub.
        
        In tour terminal, run:
            //Build Docker Image using Docker Hub
                docker build -t mountebank .
                docker image tag mountebank forio2/mountebank:latest
            //Pushing Docker image 
                docker image push forio2/mountebank:latest

K8s

    Docker Desktop's Kubernetes Setup
        - kubernetes
        - minikube (brew install minikube)
    Then, start with VM driver
        minikube start --driver=hyperkit
    Feed a config file to Kubectl
        kubectl apply -f mountebank.yml //path to the file with the config
    Print the status of all running pods and services
        kubectl get pods
        kubectl get services
