#!/bin/bash

echo "=============================================="
echo "  🚫 Desinstalador completo do Metasploit"
echo "=============================================="

# Remover pacote oficial do Metasploit
echo "[1/5] Removendo pacote metasploit-framework..."
sudo apt remove --purge metasploit-framework -y

# Remover msfinstall se existir
echo "[2/5] Removendo script msfinstall (se existir)..."
rm -f msfinstall

# Remover diretório clonado do GitHub se existir
echo "[3/5] Removendo pasta metasploit-framework clonada..."
rm -rf metasploit-framework

# Verificar e remover binário do msfconsole se sobrou em outro caminho
echo "[4/5] Verificando binário residual do msfconsole..."
if [ -f "$(which msfconsole 2>/dev/null)" ]; then
  echo "Encontrado: $(which msfconsole) -> removendo..."
  sudo rm -f "$(which msfconsole)"
else
  echo "Nenhum binário residual encontrado."
fi

# Limpar banco de dados PostgreSQL do Metasploit
echo "[5/5] Limpando banco de dados PostgreSQL do Metasploit..."
sudo systemctl stop postgresql
sudo -u postgres dropdb msf_database 2>/dev/null
sudo -u postgres dropuser msf 2>/dev/null

# Limpeza geral
sudo apt autoremove -y

echo "=============================================="
echo " ✅ Metasploit removido completamente!"
echo " Sistema limpo para nova instalação."
echo "=============================================="

