# 🐳 Asa-Projeto-Provedor de Serviços
---
## 📌 Descrição do Projeto
Este projeto consiste na implementação completa de um **provedor de serviços** com seus **clientes associados**, utilizando o proxy reverso **Traefik** para gerenciamento de tráfego, além de disponibilizar serviços de **DNS**, **e-mail**, **webmail** e **portais institucionais**, tendo 3 clientes associados com proxy de encaminhamento proprio e serviços de acordo com a necessidade de cada cliente.

### 🧩 O que está incluido?
✅ **[Arquitetura](#Arquitetura) do projeto  detallhada .** 

✅ **[Diagrama](#Diagrama)  do projeto.**

✅ **[Etapas](#Etapas) do projeto que foram executadas de acordo**

✅ **[Estrutura](#Estrutura) dos serviços implementados (dns,web).** 

✅ **[Instruções](#Instruções) para execução local.** 

✅ **[Apresentação](#Apresentação) do projeto e vídeo demonstrativo.**

✅ **[Contribuidores](#Contribuidores) do projeto.**
---
<a name="Arquitetura"></a>
## 🛠️Arquitetura 

**A arquitetura simula a rede de um provedor de internet (ISP) com múltiplos clientes, utilizando containers Docker para isolar os serviços. O ISP centraliza DNS, e-mail, webmail, proxy reverso e um portal institucional. Cada cliente possui seu próprio ambiente com portal, CMS (WordPress) e outros serviços, gerenciados por proxies reversos. O roteamento é feito com base em domínios, resolvidos via BIND9. Toda comunicação entre serviços ocorre por redes internas do Docker, garantindo segurança e escalabilidade. O projeto facilita o gerenciamento multi-cliente com isolamento e reutilização de componentes via Docker..**

<a name="Diagrama"></a>
### 📜Diagrama da Arquitetura
<img width="740" height="416" alt="image" src="https://github.com/user-attachments/assets/6fa22c34-26f4-4384-a215-af2cc9b4743e" />

---
<a name="Etapas"></a>
## 🚀 Etapas do projeto

✅ **Etapa 1 - Provedor**

Implementação da estrutura do **provedor de serviços**, incluindo:

- Configuração do **Traefik** como proxy reverso
- Implementação do **servidor DNS** com zona `asa.br`
- Implementação do **servidor de e-mail** (Postfix + Dovecot)
- Configuração do **Webmail**
- Criação do **portal** institucional do provedor
- Geração e aplicação de certificados **SSL/TLS**

✅ **Etapa 2 - Cliente 1**

Criação da estrutura do **cliente01**, contendo:

- **Portal** institucional do cliente
- **Proxy reverso** local no cliente
- **Hotsite**
- **Sign** para assinatura de documentos
- Integração completa com o provedor via DNS

✅ **Etapa 3 - Cliente 2**

Criação da estrutura do **cliente02**, contendo:
- **Portal** institucional do cliente
- **Proxy reverso** local no cliente
- **wordpress** sistema de gerenciamento de conteúdo (CMS)
- Integração completa com o provedor via DNS


✅ **Etapa 4 - Cliente 3**

Criação da estrutura do **cliente03**, contendo:
- **Portal** institucional do cliente
- **Proxy reverso** local no cliente
- **wordpress** sistema de gerenciamento de conteúdo (CMS)
- Integração completa com o provedor via DNS
  
---
<a name="Estrutura"></a>
## 📁 Estrutura de diretorios

```bash
.
├── cliente01
│   ├── compose.yaml
│   ├── portal/
│   │   ├── Dockerfile
│   │   └── index.html
│   ├── proxy/
│   │   ├── default.conf
│   │   ├── Dockerfile
│   │   └── index.html
│   └── web02/
│       ├── Dockerfile
│       ├── favicon.ico
│       ├── index.html
│       └── style.css
├── cliente02
│   ├── apache_proxy/
│   │   ├── httpd.conf
│   │   ├── logs/
│   │   │   ├── access_log
│   │   │   ├── error_log
│   │   │   ├── static_access.log
│   │   │   └── static_error.log
│   │   └── static/
│   │       └── index.html
│   ├── docker-compose.yml
│   ├── portal_apache/
│   │   ├── Dockerfile
│   │   └── index.html
│   └── wordpress/
│       ├── Dockerfile
│       └── plugin.php
├── cliente03
│   ├── compose.yaml
│   ├── portal/
│   │   ├── Dockerfile
│   │   └── index.html
│   ├── proxy/
│   │   └── haproxy.cfg
│   └── wordpress/
│       ├── Dockerfile
│       └── plugin.php
├── compose.py
├── provedor/
│   ├── certs/
│   │   ├── cliente1.crt
│   │   ├── cliente1.key
│   │   ├── selfsigned.crt
│   │   └── selfsigned.key
│   ├── compose.yaml
│   ├── dns/
│   │   ├── db.asa.br
│   │   ├── db.cliente1.br
│   │   ├── db.cliente2.br
│   │   ├── db.cliente3.br
│   │   ├── Dockerfile
│   │   └── named.conf.local
│   ├── dynamic.yml
│   ├── email/
│   │   ├── Dockerfile
│   │   ├── dovecot_conf/
│   │   │   ├── conf.d/
│   │   │   │   ├── 10-auth.conf
│   │   │   │   ├── 10-mail.conf
│   │   │   │   └── 10-master.conf
│   │   │   └── dovecot.conf
│   │   ├── mail_data/
│   │   │   ├── cara/
│   │   │   │   └── Maildir/
│   │   │   ├── coroa/
│   │   │   │   └── Maildir/
│   │   ├── main.cf
│   │   ├── ssl/
│   │   │   ├── mail.key
│   │   │   └── mail.pem
│   │   └── start.sh
│   ├── proxy/
│   │   └── html/
│   │       └── index.html
│   ├── traefik.yml
│   ├── web/
│   │   ├── Dockerfile
│   │   └── index.html
│   └── webmail/
│       ├── config.inc.php
│       └── Dockerfile
└── README.md
└── 
```

 <a name="Instruções"></a>
## 🚀 Instruções para Execução Local

### Pré requisitos
-  **Instalado docker desktop ou docker engine**
-  **Instalar o github caso vá usar o git clone**
### Execução
- **git clone https://github.com/alva010203/ASA-Entrega-01.git**
- **cd ASA-Entrega-01**
- **./service.sh dns build**    #constrói a imagem do DNS
- **./service.sh dns build**    #constrói a imagem do serviço web
- **./service.sh dns start**    #inicia o container DNS
- **./service.sh web start.**   #inicia o container WEB

  <a name="Apresentação"></a>
### 🖥️ Apresentação projeto
---


### 👨‍💻 Contribuições:

-[alva010203](https://github.com/alva010203) - **Álvaro Augusto Pinheiro** 

Atribuição: Proxy reverso Traefik / Hotsite / Portal / Proxy reverso HAproxy

-[Jaiir0](https://github.com/Jaiir0) - **Jairo Bezerra de Araujo**

Atribuição: Email/Webmail / Sign / Proxy Reverso Apache / Proxy reservo HAproxy

-[yanmaia](https://github.com/yanmaia) - **Yan Ferreira Maia**

Atribuição: Portal / Proxy Nginx / Proxy Reverso Apache / Documentação do projeto

-[Jordanjuliobr23](https://github.com/Jordanjuliobr23) - **Jordan julio Francelino**

Atribuição: DNS / Portal / CMS 

---
