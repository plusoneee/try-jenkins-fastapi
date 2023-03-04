terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "jekins" {
  name = "jenkins/jenkins:latest"
}

resource "docker_container" "jenkins_server" {
  image             = docker_image.jekins.name
  name              = "jenkins-server"
  must_run          = true
  
  ports {
    internal = 8080
    external = 8080
  }
  ports {
    internal = 50000
    external = 50000
  }

  volumes {
    container_path  = "/var/run/docker.sock"
    read_only = false
    host_path = "/var/run/docker.sock"
   #volume_name = "${docker_volume.dashing_public.name}"
  }
  
}

# /var/run/docker.sock:/var/run/docker.sock jenkins/jenkins
