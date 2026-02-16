#!/bin/bash
# Script: quota_control.sh
# Objetivo: Aplicar control de cuota de navegación
# Usa atributo quotaLimit definido en esquema LDAP

USER=$1
QUOTA=$(ldapsearch -x -LLL "(uid=$USER)" quotaLimit | awk '{print $2}')

if [ "$QUOTA" -lt 1000 ]; then
    echo "Acceso denegado: cuota excedida"
    exit 1
else
    echo "Acceso permitido"
fi
