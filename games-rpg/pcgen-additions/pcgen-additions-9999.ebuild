# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit games

DESCRIPTION="PCGen rule extensions"
HOMEPAGE=""
SRC_URI=""

LICENSE="GPL"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="games-rpg/pcgen"
RDEPEND="${DEPEND}"

src_unpack() {
	mkdir "${S}"
}

src_install() {
	echo "src_install: stuff to do!"
	dodir /usr/share/games/pcgen/data/homebrew
	for extension in "${FILESDIR}"/*; do
		cp -r "${extension}" "${D}"/usr/share/games/pcgen/data/homebrew/ || die "copying ${extension} failed"
	done
}
