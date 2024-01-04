# In realtime variables.tf file is used to declare the variable name we can assign values here but we had the other option where we can assign the values to the variables
#Hiearchy of variables:
# command line
# variable files(-var-file: eg: roboshop.tfvars)
# terraform.tfvars
# Environment variables
# prompt terraform (if variables are not assign in above 4 areas)
variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
}

variable "instance_type" {
    type = string
    #default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        Name = "Hello Terraform"
        Project = "roboshop"
        Environment = "DEV"
        Component = "web"
        Terraform = "true"
    }
}

variable "sg-name" {
    type = string
    default = "allow-all-ports"
}

variable "sg-description" {
    type = string
    default = "Allow all TLS ports"
}

variable "cidr-blocks" {
    type = list
    default = ["0.0.0.0/0"]
}

