# Step 1: Create a NACL
aws ec2 create-vpc --cidr-block 10.0.0.0/16 --region eu-west-1
aws ec2 create-network-acl --vpc-id vpc-00ce2afa1c1d76ff3
aws ec2 create-network-acl --vpc-id vpc-00ce2afa1c1d76ff3

# Step 2: Add Inbound or Outbound Rules
aws ec2 create-network-acl-entry \
    --network-acl-id acl-03f41902208af3d40 \
    --rule-number 50 \
    --protocol tcp \
    --rule-action allow \
    --egress false \
    --cidr-block 10.0.0.0/16 \
    --port-range From=50,To=100

# searching the AMI id
aws ec2 describe-images \
    --owners amazon \
    --filters "Name=name,Values=ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20241109" "Name=state,Values=available" \
    --query "Images[*].{Name:Name,ImageId:ImageId}" \
    --output table
# create a stack cloudformation
aws cloudformation create-stack \
    --stack-name souhail-ec2-launch-template \
    --template-body file://ec2-launch-template.yaml
