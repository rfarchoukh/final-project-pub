# final-project-pub/cftemplates


### Create EC2 which pulls this repo's `dev` branch and runs our docker-based http server
- `$ aws cloudformation create-stack --stack-name Jenkins-EC2-dev --template-body file://cftemplates/jenkins-ec2.yaml --parameters ParameterKey=GithubBranch,ParameterValue=dev`

### Create EC2 which pulls this repo's `stage` branch and runs our docker-based http server
- `$ aws cloudformation create-stack --stack-name Jenkins-EC2-stage --template-body file://cftemplates/jenkins-ec2.yaml --parameters ParameterKey=GithubBranch,ParameterValue=stage`