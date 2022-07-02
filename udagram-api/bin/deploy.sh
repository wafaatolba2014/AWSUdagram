eb init udagram-cli-api --platform node.js --region us-east-1
eb use udagram-cli-api-dev


eb setenv POSTGRES_HOST=database-1.cxbkefpagwjw.us-east-1.rds.amazonaws.com POSTGRES_DB=postgres POSTGRES_USERNAME=postgres POSTGRES_PASSWORD=postgres123 PORT=8080 DB_PORT=5432 RDS_DIALECT=postgres AWS_DEFAULT_REGION=us-east-1 AWS_REGION=us-east-1 AWS_ACCESS_KEY_ID=AKIASLVP5AGW6KKIJ45N AWS_SECRET_ACCESS_KEY=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 AWS_S3_ENDPOINT=http://udagram-bucket-1.s3-website-us-east-1.amazonaws.com AWS_PROFILE=default AWS_BUCKET=udagram-bucket-1 URL=http://localhost JWT_SECRET=123

eb deploy udagram-cli-api-dev
