Simply add the file /etc/portage/repos.conf/afriemann.conf::

    [afriemann]
    location = /usr/local/portage/afriemann
    sync-type = git
    sync-uri = https://github.com/afriemann/gentoo.git
    auto-sync = yes

and run emerge --sync afriemann
