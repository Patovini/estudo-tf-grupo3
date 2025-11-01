resource "local_file" "exemplo" {
  filename = "${terraform.workspace}-file.txt"
  content  = "Arquivo do workspace: ${terraform.workspace}"
}