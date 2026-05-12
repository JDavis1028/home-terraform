#!/usr/bin/env bash
set -e

cat > ../ansible/inventory/hosts.ini <<EOF
EOF

echo "=== IP Addresses ==="
echo ""


# echo "[devices]" >> ../ansible/inventory/hosts.ini
# echo "terrypi4 ansible_host=192.168.1.60" >> ../ansible/inventory/hosts.ini

echo "" >> ../ansible/inventory/hosts.ini

echo "[vms]" >> ../ansible/inventory/hosts.ini
terraform output -json vms | jq -r 'to_entries[] | "\(.key) ansible_host=\(.value)"' >> ../ansible/inventory/hosts.ini

echo "" >> ../ansible/inventory/hosts.ini

echo "[lxcs]" >> ../ansible/inventory/hosts.ini
terraform output -json lxc | jq -r 'to_entries[] | "\(.key) ansible_host=\(.value)"' >> ../ansible/inventory/hosts.ini


echo "" >> ../ansible/inventory/hosts.ini
cat ../ansible/inventory/hosts.ini
