# 🐳 Asa-Entrega-Provedor

Este projeto consiste na implementação completa de um **provedor de serviços** com seus **clientes associados**, utilizando o proxy reverso **Traefik** para gerenciamento de tráfego, além de disponibilizar serviços de **DNS**, **e-mail**, **webmail** e **portais institucionais**.



---

## 📝 Visão geral do projeto

🔧 **Estrutura final prevista:**

### 🖥️ Provedor

Responsável por gerenciar:

- **DNS**
- **E-mail** (Postfix) e **Webmail** (Dovecot + Roundcube)
- **Proxy reverso Traefik**
- **Certificados SSL/TLS** para os clientes
- Portal institucional próprio

### 🌐 Clientes

Serão **3 clientes distintos**, cada um com:

- Seu **próprio proxy reverso**, configurado de maneira diferente
- **Portal institucional exclusivo**
- **Sites ou sistemas próprios**
- Integração com o **provedor** para:
  - Resolução de nomes via DNS
  - Utilização dos serviços disponibilizados

---

## 🚀 Etapas do projeto

✅ **Etapa 1 - Provedor**

Implementação da estrutura do **provedor de serviços**, incluindo:

- Configuração do **Traefik** como proxy reverso
- Implementação do **servidor DNS** com zona `asa.br`
- Implementação do **servidor de e-mail** (Postfix + Dovecot)
- Configuração do **Webmail**
- Criação do **portal institucional** do provedor
- Geração e aplicação de certificados **SSL/TLS**

✅ **Etapa 2 - Cliente 1**

Criação da estrutura do **cliente01**, contendo:

- Portal institucional do cliente
- Proxy reverso local no cliente
- **Hotsite**
- **Sign** para assinatura de documentos
- Integração completa com o provedor via DNS

✅ **Etapa 3 - Cliente 2**

Criação da estrutura do **cliente02**, contendo:
- Portal institucional do cliente
- Proxy reverso local no cliente
- **wordpress** sistema de gerenciamento de conteúdo (CMS)
- Integração completa com o provedor via DNS


✅ **Etapa 4 - Cliente 3**

Criação da estrutura do **cliente03**, contendo:
- Portal institucional do cliente
- Proxy reverso local no cliente
- **wordpress** sistema de gerenciamento de conteúdo (CMS)
- Integração completa com o provedor via DNS
  
---

## 📁 Estrutura de diretórios

```bash
.
├── cliente01
│   ├── compose.yaml
│   ├── portal/
│   │   ├── Dockerfile
│   │   └── index.html
│   ├── proxy/
│   │   ├── default.conf
│   │   ├── Dockerfile
│   │   └── index.html
│   └── web02/
│       ├── Dockerfile
│       ├── favicon.ico
│       ├── index.html
│       └── style.css
├── provedor
│   ├── certs/
│   │   ├── cliente1.crt
│   │   ├── cliente1.key
│   │   ├── selfsigned.crt
│   │   └── selfsigned.key
│   ├── compose.yaml
│   ├── dns/
│   │   ├── db.asa.br
│   │   ├── db.cliente1.br
│   │   ├── Dockerfile
│   │   └── named.conf.local
│   ├── dynamic.yml
│   ├── email/
│   │   ├── Dockerfile
│   │   ├── dovecot_conf/
│   │   │   ├── conf.d/
│   │   │   │   ├── 10-auth.conf
│   │   │   │   ├── 10-mail.conf
│   │   │   │   └── 10-master.conf
│   │   │   └── dovecot.conf
│   │   ├── mail_data/
│   │   │   ├── cara/
│   │   │   │   └── Maildir/
│   │   │   └── coroa/
│   │   │       └── Maildir/
│   │   ├── main.cf
│   │   ├── ssl/
│   │   │   ├── mail.key
│   │   │   └── mail.pem
│   │   └── start.sh
│   ├── proxy/
│   │   └── html/
│   │       └── index.html
│   ├── traefik.yml
│   ├── web/
│   │   ├── Dockerfile
│   │   └── index.html
│   └── webmail/
│       ├── config.inc.php
│       └── Dockerfile
└── README.md
```

---


### 👨‍💻 Contribuições:

-[alva010203](https://github.com/alva010203) - **Álvaro Augusto Pinheiro** 

Atribuição: Proxy reverso Traefik / Hotsite / Portal / Proxy reverso HAproxy

-[Jaiir0](https://github.com/Jaiir0) - **Jairo Bezerra de Araujo**

Atribuição: Email/Webmail / Sign / Proxy Reverso Apache / Proxy reservo HAproxy

-[yanmaia](https://github.com/yanmaia) - **Yan Ferreira Maia**

Atribuição: Portal / Proxy Nginx / Proxy Reverso Apache 

-[Jordanjuliobr23](https://github.com/Jordanjuliobr23) - **Jordan julio Francelino**

Atribuição: DNS / Portal / CMS 

---

### 🖥️ Apresentação projeto

Vídeo de execução:

[https://drive.google.com/file/d/1lR0PxaF22I7pV1q1Mzi6vW81VQuirQtz/view?usp=drive_link]



