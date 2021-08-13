
terraform {
  required_version = ">= 0.13"
   required_providers {
    ibm = {
      source  = "ibm-cloud/ibm"
      version = "~>1.25.0"
    }
    kubernetes = {
      version = "~> 1.13.3"
    }
  }
}
