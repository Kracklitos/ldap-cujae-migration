#!/bin/bash
# Script: disable_inactive_users.sh
# Autor: Carlos Alberto López Rodríguez
# Objetivo: Deshabilitar usuarios inactivos en LDAP
# Fecha: Febrero 2026

ldapsearch -x -LLL "(loginStatus=inactive)" dn | while read dn; do
    ldapmodify -x <<EOF
dn: $dn
changetype: modify
replace: accountStatus
accountStatus: disabled
EOF
done
