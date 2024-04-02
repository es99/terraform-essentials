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

02/04/2024 - state avançado através dos comandos _pull_, _mv_. Importando recursos legados da cloud para serem gerenciados pelo terraform através
do comando ```terraform import```

02/04/2024 - Aprendizado sobre _workspace_, new, select, list. Criar _workspaces_ para _production_ e _staging_ por exemplo, ajuda a separar o state e criar infraestrutura por regioes, por exemplo, quando o _workspace_ selecionado for _staging_ os recursos serão criados na região __us-east-1__, quando o _workspace selecionado for _production_ os recursos serão criados na região __us-east-2__. Foi visto também como encriptar o state remoto utilizando criptografia do lado do servidor, como habito de segurança a ser seguido.

### Treinamento Concluído em 02/04/2024