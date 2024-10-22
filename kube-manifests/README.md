pre-requiesits:
    Install this tools:
        eksctl 
        kubectl
        aws cli (Configured)

    Make sure you have build the docker image and push it to either dockerhub or ECR or whatever place you want to push.
    use the image for the Front-Deployment.yaml file.

    Before applying the ingress.yaml file install alb controler. You can use my scripts from my github account: https://github.com/shubhodeep08/AllAboutEKS-clusterAndSetup/tree/main/clusterCretionAndAlbInstallation/configure-alb-eks.sh

    And, before applying any db manifest files. kindly install CSI driver if your using EBS volumes

Step-1:
    Apply all the Backend deployments and service yaml files first.
    make sure you have you have entered the blankm spots before applying the files.


step-2:
    Make sure you have issued a ACM To your domain so That you can use it inside the ingress.yaml file as an arn value.
    Apply all the Frontend yaml files.

