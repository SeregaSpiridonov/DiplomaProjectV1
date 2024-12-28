virtual_machines = {
    "vm-1" = {
      vm_name                      = "ubuntu22-1"    # Имя ВМ
      vm_desc                      = "Balancer and Zabbix" #Описание
      vm_cpu                       = 2               # Кол-во ядер процессора
      vm_core_fraction             = 20              # %cpu
      vm_allow_stopping_for_update = true            # разрешение на остановку для внесения изменений
      vm_nat                       = false           # автоматически назначить ВМ публичный IP-адрес
      vm_ip_address                = "192.168.10.11" # внутренний ip (в подсети)
      ram                          = 2               # Оперативная память в ГБ
      disk                         = 10              # Объём диска в ГБ
      disk_name                    = "ubuntu22-1-disk"      # Название диска
      template                     = "fd81id4ciatai2csff2u" # ID образа ОС для использования
    },
    "vm-4" = {
      vm_name                      = "ubuntu22-4"       # Имя ВМ
      vm_desc                      = "Database master"  # Описание
      vm_cpu                       = 2                  # Кол-во ядер процессора
      vm_core_fraction             = 20                 # %cpu
      vm_allow_stopping_for_update = false               # разрешение на остановку для внесения изменений
      vm_nat                       = true               # автоматически назначить ВМ публичный IP-адрес
      vm_ip_address                = "192.168.10.14"    # внутренний ip (в подсети)
      ram                          = 2                  # Оперативная память в ГБ
      disk                         = 10                 # Объём диска в ГБ
      disk_name                    = "ubuntu22-4-disk"      # Название диска
      template                     = "fd81id4ciatai2csff2u" # ID образа ОС для использования
    },
    "vm-5" = {
      vm_name                      = "ubuntu22-5"       # Имя ВМ
      vm_desc                      = "Database slave"   # Описание
      vm_cpu                       = 2                  # Кол-во ядер процессора
      vm_core_fraction             = 20                 # %cpu
      vm_allow_stopping_for_update = false               # разрешение на остановку для внесения изменений
      vm_nat                       = true               # автоматически назначить ВМ публичный IP-адрес
      vm_ip_address                = "192.168.10.15"    # внутренний ip (в подсети)
      ram                          = 2                  # Оперативная память в ГБ
      disk                         = 10                 # Объём диска в ГБ
      disk_name                    = "ubuntu22-5-disk"      # Название диска
      template                     = "fd81id4ciatai2csff2u" # ID образа ОС для использования
    },
    "vm-7" = {
      vm_name                      = "ubuntu22-7"       # Имя ВМ
      vm_desc                      = "Pgpool2forDB"    # Описание
      vm_cpu                       = 2                  # Кол-во ядер процессора
      vm_core_fraction             = 20                 # %cpu
      vm_allow_stopping_for_update = true               # разрешение на остановку для внесения изменений
      vm_nat                       = true               # автоматически назначить ВМ публичный IP-адрес
      vm_ip_address                = "192.168.10.17"    # внутренний ip (в подсети)
      ram                          = 2                  # Оперативная память в ГБ
      disk                         = 10                 # Объём диска в ГБ
      disk_name                    = "ubuntu22-7-disk"      # Название диска
      template                     = "fd81id4ciatai2csff2u" # ID образа ОС для использования
    }
}
