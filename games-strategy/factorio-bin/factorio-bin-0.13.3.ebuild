# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Factorio is a 2D game about building factories on an alien planet."
HOMEPAGE="https://www.factorio.com/"
LICENSE="GPL"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0

DEPEND=""

RESTRICT="fetch"

MY_PKG="${PN/-bin/}_alpha_x64_${PV}.tar.gz"
SRC_URI="${MY_PKG}"

S="${WORKDIR}/factorio"

pkg_nofetch() {
	einfo "Please download"
	einfo "  - ${MY_PKG}"
	einfo "from ${HOMEPAGE} and place them in ${DISTDIR}"
	einfo "or install fctdl via pip and run:"
	einfo "  $ fctdl ${PV} ${DISTDIR}"
}

src_install() {
	dodir /usr/share/factorio
	cp -R "${S}"/* "${D}"/usr/share/factorio/ || die "Install failed!"
	mv "${D}"/usr/share/factorio/data/* "${D}"/usr/share/factorio || die "Install failed!"
	rm -r "${D}"/usr/share/factorio/data

	dosym /usr/share/factorio/bin/x64/factorio /usr/local/bin/factorio
}
