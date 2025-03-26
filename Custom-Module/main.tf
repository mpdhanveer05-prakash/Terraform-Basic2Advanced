# Dev Infrastructure
module "dev-services" {
    source = "./Services-code"
    env = "dev"
    bucket_name = "bucket-devops-demo"
    instance_count = 1
    instance_type = "t2.micro"
    ami_id = "ami-0df368112825f8d8f"
    hash_key = "ServiceID"
}
# Prod Infrastructure
module "prod-services"{
    source = "./Services-code"
    env = "prod"
    bucket_name = "bucket-devops-demo"
    instance_count = 2
    instance_type = "t2.medium"
    ami_id = "ami-0df368112825f8d8f"
    hash_key = "ServiceID"
}

#Test Infrastructure
module "test-services"{
    source = "./Services-code"
    env = "test"
    bucket_name = "bucket-devops-demo"
    instance_count = 1
    instance_type = "t2.small"
    ami_id = "ami-0df368112825f8d8f"
    hash_key = "ServiceID"
}
