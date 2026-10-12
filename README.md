# AutoMaster — Backend Java

API REST para gerenciamento de oficinas mecânicas, desenvolvida com Java 21 e Spring Boot. O AutoMaster tem como foco o gerenciamento e a abertura de Ordens de Serviço (OS), centralizando as operações da oficina em uma aplicação backend.

## Sobre o projeto

O AutoMaster é um sistema desenvolvido para auxiliar no gerenciamento de oficinas mecânicas, organizando os processos operacionais e facilitando o fluxo de trabalho entre os diferentes profissionais.

A solução foi planejada para atender três atores principais, utilizando interfaces adequadas às suas responsabilidades: uma aplicação Web para administrador e atendente e uma aplicação Mobile para mecânicos.

O backend centraliza as regras de negócio, a persistência dos dados e os mecanismos de segurança, disponibilizando os recursos necessários para as aplicações clientes por meio de uma API REST.

## Atores do sistema

### Administrador (ADM)
Responsável pelas atividades administrativas do sistema, com acesso por meio da aplicação Web.

### Atendente
Responsável pelas operações relacionadas ao atendimento e ao gerenciamento de Ordens de Serviço, utilizando a aplicação Web.

### Mecânico
Utiliza a aplicação Mobile para as atividades relacionadas às Ordens de Serviço.

## Tecnologias utilizadas

| Tecnologia | Finalidade |
|---|---|
| Java 21 | Linguagem de programação |
| Spring Boot | Estrutura principal da aplicação backend |
| Spring Data JPA | Persistência e mapeamento objeto-relacional |
| MySQL | Banco de dados relacional |
| Flyway | Versionamento e gerenciamento das migrações do banco |
| Spring Security | Segurança e controle de acesso |
| JWT | Autenticação baseada em tokens |
| Java Mail Sender | Integração para envio de e-mails |
| Maven | Gerenciamento de dependências e build do projeto |

## Arquitetura do projeto

O projeto está organizado em pacotes com responsabilidades específicas, buscando manter a separação de responsabilidades, facilitar a manutenção e permitir a evolução da aplicação.

### Estrutura de diretórios

```text
AutoMaster-Backend-Java/
├── src/
│   └── main/
│       ├── java/
│       │   └── com/
│       │       └── automasterjava/
│       │           └── master/
│       │               ├── MasterApplication.java
│       │               ├── config/
│       │               ├── controllers/
│       │               ├── entity/
│       │               │   └── role/
│       │               ├── service/
│       │               ├── repository/
│       │               ├── dto/
│       │               └── security/
│       └── resources/
│           ├── db/
│           │   └── migration/
│           └── application.properties
├── pom.xml
└── README.md
```

### Responsabilidade dos pacotes

| Pacote/arquivo | Responsabilidade |
|---|---|
| `MasterApplication.java` | Ponto de entrada da aplicação Spring Boot. |
| `config/` | Configurações gerais da aplicação. |
| `controllers/` | Recebimento de requisições HTTP e exposição dos endpoints da API. |
| `entity/` | Entidades que representam os dados persistidos no sistema. |
| `entity/role/` | Organização dos componentes relacionados aos papéis dos usuários. |
| `service/` | Implementação das regras de negócio. |
| `repository/` | Acesso e persistência dos dados utilizando JPA. |
| `dto/` | Objetos utilizados para transferência de dados entre as camadas. |
| `security/` | Componentes dedicados à autenticação e validação de tokens JWT. |
| `resources/db/migration/` | Local convencional para as migrações versionadas do Flyway. |
| `application.properties` | Configurações da aplicação Spring Boot. |
| `pom.xml` | Gerenciamento de dependências, plugins e build com Maven. |

## Banco de dados

O projeto utiliza MySQL como banco de dados relacional e Spring Data JPA para o mapeamento e a persistência das entidades.

O Flyway é utilizado para gerenciar a evolução do esquema do banco de dados por meio de migrações versionadas, promovendo maior controle sobre as alterações estruturais.

## Segurança e autenticação

A camada de segurança utiliza Spring Security e JWT como base para a implementação da autenticação e do controle de acesso aos recursos da API.

Os componentes relacionados à segurança são organizados no pacote `security/`, mantendo essa responsabilidade separada das demais camadas da aplicação.

## Integração com aplicações clientes

O backend foi planejado para atender duas aplicações clientes:

- **Web:** destinada ao administrador e ao atendente.
- **Mobile:** destinada ao mecânico.

A comunicação entre as aplicações clientes e o backend ocorre por meio de uma API REST, centralizando o processamento das regras de negócio.

## Objetivos técnicos

- Desenvolver uma API REST utilizando Java 21 e Spring Boot.
- Organizar o código em camadas com responsabilidades definidas.
- Implementar regras de negócio relacionadas às Ordens de Serviço.
- Integrar a aplicação a um banco de dados relacional.
- Gerenciar alterações no banco por meio de migrações versionadas.
- Estruturar a autenticação e a segurança utilizando JWT e Spring Security.
- Integrar o envio de e-mails à aplicação.
- Facilitar a manutenção, a organização e a evolução do sistema.

## Como executar o projeto

### Pré-requisitos

- Java Development Kit (JDK) 21.
- MySQL.
- Maven.
- IDE de sua preferência.

### Configuração

1. Clone o repositório:

   ```bash
   git clone https://github.com/pietros133/AutoMaster-Backend-Java.git
   ```

2. Entre no diretório do projeto:

   ```bash
   cd AutoMaster-Backend-Java
   ```

3. Configure as propriedades de conexão com o MySQL e as demais variáveis necessárias no ambiente de execução.

4. Execute a aplicação utilizando o Maven Wrapper, caso esteja disponível:

   ```bash
   ./mvnw spring-boot:run
   ```

   Ou, se o Maven estiver instalado:

   ```bash
   mvn spring-boot:run
   ```

> **Observação:** os comandos e as configurações podem precisar de ajustes conforme os arquivos efetivamente presentes no repositório. Não inclua senhas, tokens JWT ou outras credenciais diretamente no código versionado.

## Status do projeto

**Em desenvolvimento.**

Novas funcionalidades, regras de negócio e integrações serão incorporadas ao longo do desenvolvimento.

---

Desenvolvido por **Pietro Santos Miranda**.
