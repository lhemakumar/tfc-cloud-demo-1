terraform {
    required_providers {
        aws={
            source="hashicorp/aws"
            version="~> 4.16"
        }

        random={
         source="hashicorp/random"
         version="3.0.0"
        }
    }

    required_version = ">= 1.2.0"
}