module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.8.0"
  gcp_project = "pluralsight-jen-x-course"
  cluster_name = "ps-jenkinsx-cluster"
}

output "jx_requirements" {
  value = module.jx.jx_requirements
}  

terraform {
  backend "gcs" {
    bucket = "ps-jenkinsx-terraform-state-files"
	prefix = "terraform/state"
	}
}
