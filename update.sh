#!/bin/bash
echo "[$(date)] media-kanri 更新開始"
cd /opt/media-kanri
chown -R kwkm:kwkm /opt/media-kanri/.git
sudo -u kwkm git pull origin main || { echo "エラー: git pull 失敗"; exit 1; }
sudo systemctl restart media-kanri
echo "[$(date)] 更新完了"
