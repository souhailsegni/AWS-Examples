

# creating security group

Parameters:
  VpcId:
    Type: String
    Description: VPC ID where the security group will be created
  AllowedIP:
    Type: String
    Default: 0.0.0.0/0
    Description: Allowed IP range for ingress traffic (e.g., your public IP for SSH)

Resources:
  MySecurityGroup:
    Type: AWS::EC2::SecurityGroup
    Properties:
      GroupDescription: Allow HTTP and SSH traffic
      VpcId: !Ref VpcId
      SecurityGroupIngress:
        - IpProtocol: tcp
          FromPort: 22
          ToPort: 22
          CidrIp: !Ref AllowedIP  # Use the parameter here
        - IpProtocol: tcp
          FromPort: 80
          ToPort: 80
          CidrIp: !Ref AllowedIP
      SecurityGroupEgress:
        - IpProtocol: -1
          FromPort: -1
          ToPort: -1
          CidrIp: 0.0.0.0/0
aws ec2 describe-images --owners amazon --filters "Name=name,Values=amzn2-ami-hvm-*" --region eu-west-1

aws ec2 describe-route-tables --filters "Name=association.subnet-id,Values=subnet-0d92d4ff11754d6e2"
