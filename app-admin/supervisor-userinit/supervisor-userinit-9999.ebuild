# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="user based supervisord init script"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="app-admin/supervisor"
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir "${S}"
}

src_compile() {
	echo "nothing to do."
}

src_install() {
	newinitd "${FILESDIR}"/"${PN}".initd "${PN}"
}
