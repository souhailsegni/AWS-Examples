# create a bucket
aws s3 mb s3://myfunnybucket-100
# create a file
echo "helllo world" > hello.txt
# upload file with metadata
aws s3api put-object \
    --bucket myfunnybucket-100 \
    --key hello.txt \
    --body hello.txt \
    --metadata germany=fcbayern
# getting the metadeta
aws s3api head-object --bucket myfunnybucket-100 --key hello.txt

