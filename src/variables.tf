###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1gegppm1o1298udt1sl"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gjpour80p6sceb8911"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-d"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "db_zone" {
  type    = string
  default = "ru-central1-e"
}

variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "db_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "db_vpc_name" {
  type        = string
  default     = "db_subnet"
  description = "VPC network & subnet name"
}


variable "vm_web_image" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "web vm image"
}






