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
```
### 2. Torne o script executável

```bash
chmod +x uninstall.sh
```

### 3. Execute com permissões de sudo
```bash
./uninstall.sh
```

### 🧼 Exemplo de saída

==============================================
  🚫 Desinstalador completo do Metasploit
==============================================
- [1/5] Removendo pacote metasploit-framework...
- [2/5] Removendo script msfinstall (se existir)...
- [3/5] Removendo pasta metasploit-framework clonada...
- [4/5] Verificando binário residual do msfconsole...
- Nenhum binário residual encontrado.
- [5/5] Limpando banco de dados PostgreSQL do Metasploit...
- ✅ Metasploit removido completamente!
- Sistema limpo para nova instalação.

### 🛠️ Detalhes técnicos

- Remove o pacote metasploit-framework usando apt remove --purge
- Exclui arquivos e pastas relacionadas, como msfinstall e metasploit-framework
- Verifica se há binários remanescentes do msfconsole e remove
- Para o serviço do PostgreSQL e remove banco/usuário msf
- Limpa pacotes obsoletos com apt autoremove

### 📄 Licença
Este projeto é distribuído sob a licença MIT.
Feito com 💀 por 00111000

### ⚠️ Aviso legal
Este script é destinado apenas para fins educacionais e de limpeza segura em ambientes controlados.
Use com cautela, especialmente se houver outros serviços usando PostgreSQL no sistema.
