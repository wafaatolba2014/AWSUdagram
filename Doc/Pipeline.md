# orbs:
node: circleci/node@5.0.0
  aws-cli: circleci/aws-cli@2.1.0
  eb: circleci/aws-elastic-beanstalk@2.0.1
# Jobs:
  has only one job called build
  - build  steps:
      - node/install --> install required dependencies like node and npm
      - aws-cli/setup --> to execute aws cli commands
      - eb/setup --> use eb instance and add environment  variables of eb
      - checkout--> will checkout project source code into the project directory
     
     any update in project on github which is related in project on circleci
     will trigger  circleci to fire config.yml file to execute  jobs which exist on it
     to install dependencies, build front end, build backend, test front end, test
     back end, deploy front end on aws s3, and deploy back end on elastic bean stalk
