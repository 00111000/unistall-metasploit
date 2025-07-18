# 🧹 uninstall-metasploit

Script oficial para **desinstalar completamente o Metasploit Framework** de distribuições Linux baseadas em Debian e Ubuntu.

---

## 📜 Sobre

Este script automatiza a remoção completa do Metasploit do seu sistema Linux, incluindo:

- Remoção do pacote `metasploit-framework`
- Exclusão de arquivos clonados ou residuais
- Remoção do script `msfinstall` (se existir)
- Verificação e exclusão do binário `msfconsole`
- Limpeza do banco de dados PostgreSQL
- Execução do `autoremove` para pacotes obsoletos

---

## 💻 Sistemas compatíveis

✅ Testado em:

- Ubuntu 20.04 / 22.04  
- Debian 10 / 11  
- Linux Mint  
- Pop!_OS  
- Parrot OS  

⚠️ Cuidado ao executar em:

- Sistemas que usam PostgreSQL para outros serviços  
- Instalações manuais fora do APT  

---

## ⚙️ Como usar

### 1. Clone o repositório

```bash
git clone https://github.com/00111000/install-metasploit
cd install-metasploit
