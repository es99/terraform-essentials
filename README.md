# Terraform Essentials
## Treinamento gratuito de terraform básico oferecido pela [LinuxTips](https://linuxtips.io)

- Day 01 -> Outputs, variables, data, recursos, providers, backend remote state.
Bem como comandos: terraform (init, fmt, validade, plan, apply, destroy, show, console)
(CONCLUÍDO)

25/03/2024 - Primeira aula concluída sobre módulos
28/03/2024 - Aprofundando no State, migrando o state tanto para a nuvem como voltando para local através do comando ```terraform init -migrate-state```
dando pull/push no state ```terraform state pull >> arquivo``` ```terraform state push <arquivo>``` respectivamente.
Só que o mais importante foi o conceito de __state lock__ onde bloqueamos o state enquanto fazemos alterações para que este mesmo impeça de outras pessoas
(desenvolvedores) façam mudança no state enquanto está havendo gravação/mudança.