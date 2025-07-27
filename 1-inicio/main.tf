resource "local_file" "CrearUnArchivo" {
  content  = "Este es el contenido del archivo creado por Terraform25Cambios."
  filename = "archivo_creado.txt"
  
}