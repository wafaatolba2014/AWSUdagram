## install environment

# install RDS
- go to AWS console, search for RDS. install postgres database as
- DB instance identifier= database-1
- master password= postgres123
- Database port= 5432
- Initial database name= postgres
- Endpoint=database-1.cxbkefpagwjw.us-east-1.rds.amazonaws.com
- screenshot=RDS.png

# install S3
- go to AWS console, search for s3
- create bucket with name= udagram-bk
- front-end website url:
  http://udagram-bk.s3-website-us-east-1.amazonaws.com
- screenshot of front end= FrontEndWebsite.png
- screenshot of s3 bucket= S3-bucket.png
- screenshot of s3 bucket objects=S3-objects.png

# install IAM
- create a group called newAdmin group with (AdministratorAccess, AmazonS3FullAccess, and AdministratorAccess-AWSElasticBeanstalk) Permissions policies
- create user  called (AWS_IAM) with programatic access
- user name= AWS_IAM
   Access key ID= AKIASLVP5AGW53V7UEMY
   Secret access key= 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
   region: us-east-1
- screenshot of IAM user = IAM user.png

# install ElasticBeanstalk
- we need to install ec2 instance to host back-end application
- from vs code in terminal execute the following

```
eb init udagram-cli-api2 --platform node.js --region us-east-1

eb create --sample udagram-cli-api2-dev

eb use udagram-cli-api2-dev

eb deploy

eb setenv POSTGRES_HOST=database-1.cxbkefpagwjw.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres123 PORT=8080 DB_PORT=5432 RDS_DIALECT=postgres AWS_REGION=us-east-1 AWS_ACCESS_KEY_ID=AKIASLVP5AGW53V7UEMY AWS_SECRET_ACCESS_KEY=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 AWS_S3_ENDPOINT=http://udagram-bk.s3-website-us-east-1.amazonaws.com AWS_PROFILE=default AWS_BUCKET=udagram-bk URL=http://localhost JWT_SECRET=123
```
- end point url
http://udagram-cli-api2-dev.eba-eif9ucdt.us-east-1.elasticbeanstalk.com/

- elastic beanstalk instance name= udagram-cli-api2-dev
- screenshot of elastic beanstalk= eb udagram-cli-api2.png and eb health.png
- screenshot of eb in browser= eb browser.png
- screenshot of eb environment variables =eb_env_variables.png

# github
- go to https://github.com/
- create account
- create new repository, and upload udagram project on it
- my github account
https://github.com/wafaatolba2014/AWSUdagram

# circleci
- go to https://circleci.com/
- create account on circleci
- create project refere to application on github
- add environment variables in circleci
- screenshot of environment variables in circleci= circleci_env_variables.png
- screenshot of build success in circleci= circleci_Build_Success.png

# Documentation
- go to https://app.diagrams.net/
- create architecture diagram and pipeline diagram
- screenshot of diagrams= diagram.png, diagram-pipeline.png

## Refrences
1. https://stackoverflow.com/questions/68511124/you-may-not-specify-a-referenced-group-id-for-an-existing-ipv4-cidr-rule-prompt
2. https://stackoverflow.com/questions/66321327/npm-install-is-failing-could-not-resolve-dependency
3. https://stackoverflow.com/questions/14502612/delete-a-directory-and-its-files-using-command-line-but-dont-throw-error-if-it
4. https://stackoverflow.com/questions/21505129/xcopy-copy-folder-starting-with-a-dot
5. https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/xcopy
6. https://www.yonisfy.com/udacity/projects/hosting-full-stack-application#uploadfile/folders
7. https://stackoverflow.com/questions/51014647/aws-postgres-db-does-not-exist-when-connecting-with-pg
8. https://stackoverflow.com/questions/56799562/git-submodule-add-error-does-not-have-a-commit-checked-out
9. https://stackoverflow.com/questions/8961334/how-to-change-folder-with-git-bash
10. https://stackoverflow.com/questions/71080354/getting-the-bucket-does-not-allow-acls-error#:~:text=You%20should%20be%20able%20to,the%20option%20%22ACLs%20enabled%22.
11. https://stackoverflow.com/questions/66321327/npm-install-is-failing-could-not-resolve-dependency
12. https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
13. https://discoposse.com/2016/06/12/unable-to-delete-empty-elastic-beanstalk-s3-bucket/


