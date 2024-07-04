resource "mgc_virtual-machine_instances" "basic_instance" {
  name             = var.name
  delete_public_ip = true
  ssh_key_name     = var.ssh_key_name

  machine_type = {
    name = var.machine_type
  }
  image = {
    name = "cloud-ubuntu-22.04 LTS"
  }
  network = {
    associate_public_ip = var.associate_public_ip
  }

}

resource "mgc_dbaas_instances" "basic_bd" {
  engine_id = "063f3994-b6c2-4c37-96c9-bab8d82d36f7"
  flavor_id = "8bbe8e01-40c8-4d2b-80e8-189debc44b1c"
  name      = var.name
  password  = var.db_password
  user      = var.db_user
  volume = {
    size = "10"
  }
}