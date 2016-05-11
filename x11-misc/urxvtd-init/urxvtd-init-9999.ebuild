# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="Per-user init script for urxvtd"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="x11-terms/rxvt-unicode"
RDEPEND="${DEPEND}"

MYPN="urxvtd"

src_unpack() {
	mkdir "${S}"
}

src_compile() {
	echo "nothing to do."
}

src_install() {
	newinitd "${FILESDIR}"/"${MYPN}".initd "${MYPN}"
}
