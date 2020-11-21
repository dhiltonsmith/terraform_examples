# _  _   __   __  __ _ 
#( \/ ) / _\ (  )(  ( \
#/ \/ \/    \ )( /    /
#\_)(_/\_/\_/(__)\_)__)
# ASCII art generated at patorjk.com (http://patorjk.com/software/taag/ <FONT: Graceful>)
#
# The main file contains the high level connections that are used by the remainder of the terraform module
#  this also includes all data which must be looked up.
#
# ____  ____   __   _  _  __  ____  ____  ____ 
#(  _ \(  _ \ /  \ / )( \(  )(    \(  __)(  _ \
# ) __/ )   /(  O )\ \/ / )(  ) D ( ) _)  )   /
#(__)  (__\_) \__/  \__/ (__)(____/(____)(__\_)
# ASCII art generated at patorjk.com (http://patorjk.com/software/taag/ <FONT: Graceful>)
#
# Terraform provider which contains the connection to AWS.

provider "aws" {
  region = var.aws_region
}

# ____   __  ____  __
#(    \ / _\(_  _)/ _\
# ) D (/    \ )( /    \
#(____/\_/\_/(__)\_/\_/
# ASCII art generated at patorjk.com (http://patorjk.com/software/taag/ <FONT: Graceful>)
#
# Data that will be used within the module.

data "aws_ec2_instance_type_offerings" "instance_types" {
  filter {
    name   = "instance-type"
    values = local.instance_classes
  }
}
