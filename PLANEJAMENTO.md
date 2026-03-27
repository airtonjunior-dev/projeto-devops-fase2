# Planejamento do Projeto DevOps - Fase 1

## 1. Descrição do Projeto
Este projeto implementa um ciclo de vida DevOps para uma aplicação Node.js, focando em automação de infraestrutura (IaC) e integração contínua (CI). O objetivo é garantir um ambiente padronizado, auditável e livre de erros de configuração manual.

### Objetivos Técnicos
- **CI/CD:** Automação de testes e validação de código via GitHub Actions.
- **IaC:** Provisionamento de infraestrutura AWS utilizando Terraform.
- **Qualidade:** Garantia de integridade do ambiente através de scripts de teste automatizados.

### Infraestrutura Prevista (AWS)
- **Instância:** EC2 `t2.micro` (Amazon Linux 2).
- **Armazenamento:** S3 Bucket para ativos estáticos.
- **Rede:** VPC Padrão com Security Groups (Portas 22 e 80).

## 2. Organização do Repositório
Para facilitar a manutenção e auditoria, o projeto segue a estrutura:
- `.github/workflows/`: Definições do pipeline de CI.
- `terraform/`: Scripts de infraestrutura (main, variables, outputs).
- `test.js`: Validações de prontidão do sistema.
- `package.json`: Scripts e dependências.

## 3. Plano de Integração Contínua (CI)
O pipeline executa automaticamente em cada push para a branch `main`:
1. Checkout do código.
2. Configuração do Node.js 20.
3. Instalação de dependências (`npm install`).
4. Execução de testes de sistema (`npm test`).

## 4. Detalhes de IaC
Utilizamos o Terraform para gerenciar a infraestrutura de forma declarativa. O uso de variáveis permite a portabilidade do projeto entre diferentes regiões da AWS sem alteração do código base.

## 5. Link do Repositório
https://github.com/airtonjunior-dev/projeto-devops-fase1
