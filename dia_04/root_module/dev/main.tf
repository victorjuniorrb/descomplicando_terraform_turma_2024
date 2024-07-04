module "projeto_alpha" {
  source              = "../../magalu_module"
  name                = "alpha"
  environment         = "dev"
  ssh_key_name        = "victorjunior"
  associate_public_ip = true
  db_password         = "P@ssw0rd"
  db_user             = "user"
}