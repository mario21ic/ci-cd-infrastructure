Instalar dependencias
```
terraform init
```

Crear VMs
```
terraform apply --auto-approve
```

Crear pem
```
./crear_sshkey.sh
```

Revisar IPs
```
terraform output
```

Obtener claves de Jenkins
```
./jenkins-get-pass.sh
```


Eliminar todo
```
terraform destroy --auto-approve
```
