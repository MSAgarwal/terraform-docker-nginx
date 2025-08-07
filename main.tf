terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  host = "npipe:////./pipe/docker_engine" # For Windows
  # host = "unix:///var/run/docker.sock"  # For Linux/Mac
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx_container" {
  name  = "nginx-server"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 8000
  }
}
