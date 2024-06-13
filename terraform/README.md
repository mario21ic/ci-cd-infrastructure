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

Obtener clave de jenkins
```
./jenkins-get-pass.sh <ip-servidor>
```


Eliminar todo
```
terraform destroy --auto-approve
```
