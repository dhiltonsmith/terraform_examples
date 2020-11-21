# _  _   __   ____  __   __   ____  __    ____  ____ 
#/ )( \ / _\ (  _ \(  ) / _\ (  _ \(  )  (  __)/ ___)
#\ \/ //    \ )   / )( /    \ ) _ (/ (_/\ ) _) \___ \
# \__/ \_/\_/(__\_)(__)\_/\_/(____/\____/(____)(____/
# ASCII art generated at patorjk.com (http://patorjk.com/software/taag/ <FONT: Graceful>)
#
# Contains variables used in the module which can be overwritten as needed by outside modules.

variable "aws_region" {
  description = "Region that terraform module will be run in."

  default     = "us-west-2"
}

variable "instance_classes" {
  description = "Instance classes to lookup."
  type        = list(string)

  default     = ["*"]
}

# __     __    ___   __   __    ____ 
#(  )   /  \  / __) / _\ (  )  / ___)
#/ (_/\(  O )( (__ /    \/ (_/\\___ \
#\____/ \__/  \___)\_/\_/\____/(____/
# ASCII art generated at patorjk.com (http://patorjk.com/software/taag/ <FONT: Graceful>)
#
# Locals logic that is used for manipulating data.

locals {
  instance_classes = formatlist("%s.*", var.instance_classes)
}

