# Manual Técnico - Migración LDAP CUJAE

## Instalación
1. Instalar OpenLDAP en Ubuntu Server 22.04.
2. Configurar TLS/SSL con certificados institucionales.
3. Importar esquemas base y personalizados desde `ldif/`.

## Recuperación
- Backup diario con `slapcat > backup.ldif`.
- Restauración con `slapadd -l backup.ldif`.

## Scripts disponibles
- `disable_inactive_users.sh`: desactiva cuentas inactivas.
- `quota_control.sh`: valida cuota de navegación.
- `backup_restore.sh`: automatiza respaldo y recuperación.
