job "tetris" {
  datacenters = ["dc1"]
  type        = "service"

  group "tetris-group" {
    count = 1

    task "tetris-task" {
      driver = "docker"

      config {
        image = "uzyexe/tetris"
      }

      resources {
        cpu    = 500
        memory = 256
      }
    }
  }
}
