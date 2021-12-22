# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
#
# stolen from: https://git.sr.ht/~robertgzr/portage/tree/master/item/dev-util/lua-language-server
#

EAPI=7

MY_PN=${PN/-bin/}
inherit unpacker eutils

DESCRIPTION="lua language server written in lua"
HOMEPAGE="https://github.com/sumneko/lua-language-server"

SRC_URI_AMD64="https://github.com/sumneko/${MY_PN}/releases/download/${PV}/${MY_PN}-${PV}-linux-x64.tar.gz"
SRC_URI="
    amd64? ( ${SRC_URI_AMD64} )
"

LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"
RESTRICT="mirror"

src_unpack() {
	if [[ -n ${A} ]]; then
		mkdir "${WORKDIR}/${P}"

		cd "${WORKDIR}/${P}"

		unpack ${A}
	fi
}

src_install() {
	insinto /usr/libexec/"${PN}"
	doins bin/Linux/*
	doins -r main.lua debugger.lua \
		locale script meta

	chmod +x ${D}/usr/libexec/${PN}/${PN}
	sed "s:/usr/:${EPREFIX}&:" "${FILESDIR}"/wrapper | newbin - "${PN}"
}
