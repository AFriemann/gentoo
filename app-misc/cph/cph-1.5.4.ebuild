# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="CPH - C Password Hasher"
HOMEPAGE="https://bitbucket.org/afriemann/cph"
LICENSE="GPL"

SRC_URI="https://bitbucket.org/afriemann/cph/downloads/cph-${PV}.tar.gz"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0
IUSE="+gtk"

DEPEND="dev-libs/libgcrypt
		gtk? ( x11-libs/gtk+:3 )"

src_configure () {
	econf $(use_enable gtk)
}

src_install () {
	emake DESTDIR="${D}" install
	dodoc LICENSE
}

