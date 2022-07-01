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
- create bucket with name= udagram-bucket-1
- front-end website url:
  http://udagram-bucket-1.s3-website-us-east-1.amazonaws.com
- screenshot of front end= FrontEndWebsite.png
- screenshot of s3 bucket= S3-bucket.png
- screenshot of s3 bucket objects=S3-objects.png

# install IAM
- create a group called admin group with AdministratorAccess
- create user  called cli with programatic access
- user name= aws-cli
   Access key ID= AKIASLVP5AGW6KKIJ45N
   Secret access key= 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
   region: us-east-1

# install ElasticBeanstalk
- we need to install ec2 instance to host back-end application
- from vs code in terminal execute the following

```
eb init udagram-cli-api --platform node.js --region us-east-1

eb create --sample udagram-cli-api-dev

eb use udagram-cli-api-dev

eb deploy

eb setenv POSTGRES_HOST=database-1.cxbkefpagwjw.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres123 PORT=8080 DB_PORT=5432 RDS_DIALECT=postgres AWS_REGION=us-east-1 AWS_ACCESS_KEY_ID=AKIASLVP5AGW6KKIJ45N AWS_SECRET_ACCESS_KEY=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 AWS_S3_ENDPOINT=http://udagram-bucket-1.s3-website-us-east-1.amazonaws.com AWS_PROFILE=default AWS_BUCKET=udagram-bucket-1 URL=http://localhost JWT_SECRET=123
```
- end point url
http://udagram-cli-api-dev.eba-q53wrd6m.us-east-1.elasticbeanstalk.com/

- elastic beanstalk instance name= udagram-cli-api-dev
- screenshot of elastic beanstalk= eb.png and eb healthy.png
- screenshot of eb in browser= eb browser.png
- screenshot of eb environment variables =eb Environment properties.png

# github
- go to https://github.com/
- create account
- create new repository, and upload udagram project on it

# circleci
- go to https://circleci.com/
- create account on circleci
- create project refere to application on github
- add environment variables in circleci
- screenshot of environment variables in circleci= circle Enviroment properties.png

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
