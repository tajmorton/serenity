#!/usr/bin/env -S bash ../.port_include.sh
port='mutt'
version='2.2.9'
useconfigure='true'
configopts=(
    '--enable-pop'
    '--enable-imap'
    '--enable-smtp'
    "--with-ssl=${SERENITY_INSTALL_ROOT}/usr/local"
)
files="http://ftp.mutt.org/pub/mutt/mutt-${version}.tar.gz mutt-${version}.tar.gz
http://ftp.mutt.org/pub/mutt/mutt-${version}.tar.gz.asc mutt-${version}.tar.gz.asc"
auth_type='sig'
auth_import_key='8975A9B33AA37910385C5308ADEF768480316BDA'
auth_opts=("mutt-${version}.tar.gz.asc" "mutt-${version}.tar.gz")
depends=(
    'openssl'
    'ncurses'
    'ca-certificates'
)
launcher_name='Mutt'
launcher_category='Internet'
launcher_command='/usr/local/bin/mutt'
launcher_run_in_terminal='true'
#icon_file='web/cgi/favicon.ico'
