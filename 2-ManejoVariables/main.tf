resource "local_file" "CrearUnArchivo" {
  content  = "Este es el contenido del archivo creado por Terraform25Cambios."
  filename = var.nombre_archivo
  //filename = "${var.nombre_archivo}.txt" Concatenando la extensión .txt
}

variable "nombre_archivo" {
  description = "Nombre del archivo a crear"
  type        = string
  default     = "archivo_creado.txt"

}