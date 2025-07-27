# Terraform Project

Este proyecto utiliza [Terraform](https://www.terraform.io/) para definir y aprovisionar infraestructura como código.

## Requisitos

Antes de comenzar, asegúrate de tener instalado:

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- Acceso a tus credenciales de proveedor (AWS, Azure, GCP, etc.)
- Configuración adecuada del entorno (variables, backend si aplica)

## Comandos Básicos

### Inicializar Terraform

Inicializa el entorno de trabajo, descarga proveedores y módulos:

```bash
terraform init
```

### Validar el archivo

Verifica que la sintaxis y la estructura de los archivos `.tf` sean correctas:

```bash
terraform validate
```

### Planificar los cambios

Simula los cambios que se realizarán sin aplicar nada todavía:

```bash
terraform plan
```

### Aplicar los cambios

Ejecuta y aplica los cambios a la infraestructura:

```bash
terraform apply
```

O para omitir la confirmación manual:

```bash
terraform apply --auto-approve
```

## Archivos ignorados

Asegúrate de agregar un archivo `.gitignore` para evitar subir archivos sensibles o generados automáticamente:

```gitignore
.terraform/
*.tfstate
*.tfstate.backup
crash.log
*.tfplan
.terraform.lock.hcl
```

## Estructura recomendada

```text
project/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars (no se sube al repo)
├── .gitignore
└── README.md
```

## Buenas prácticas

- Usa `terraform fmt` para mantener formato consistente.
- Revisa cambios antes de aplicar con `terraform plan`.
- Guarda tus archivos `.tfstate` en remoto si trabajas en equipo (por ejemplo, usando S3 + DynamoDB en AWS).
- No subas credenciales al repositorio.

---

> _Infraestructura como código, mantenida con Terraform._
