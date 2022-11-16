set AWS_AccessKey=AKIAVFAJTEYIY7TQZFEE
set AWS_SecretKey=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
set AWS_AccountID=354354931217
set AWS_Region=ap-south-1

aws configure set aws_access_key_id $AWS_AccessKey
aws configure set aws_secret_access_key $AWS_SecretKey
aws configure set region $AWS_Region

aws ecr get-login-password --region $AWS_Region | docker login --username AWS --password-stdin $AWS_AccountID$.dkr.ecr.$AWS_Region$.amazonaws.com

docker pull $AWS_AccountID.dkr.ecr.$AWS_Region.amazonaws.com/hdfc_ibpsportal:alpine-openjdk
docker pull $AWS_AccountID.dkr.ecr.$AWS_Region.amazonaws.com/hdfc_ibps5serviceinstanceejb:sp2
