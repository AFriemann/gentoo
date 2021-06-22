# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit meson vala

DESCRIPTION="mconnect - KDE Connect protocol implementation in Vala/C"
HOMEPAGE="https://github.com/bboozzoo/mconnect"
LICENSE="GPL-2"

SRC_URI="https://github.com/bboozzoo/mconnect/archive/refs/heads/master.zip -> ${P}.zip"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0

S="${WORKDIR}/mconnect-master"

DEPEND="dev-lang/vala
		dev-libs/glib
		dev-libs/gobject-introspection
		dev-libs/libgee
		dev-libs/json-glib
		net-libs/gnutls
		x11-libs/libnotify
		dev-util/meson
		dev-util/pkgconf
		sys-devel/gdb"

PATCHES=(
	"${FILESDIR}/${P}-glib_regex.patch"
)

src_prepare() {
	default

	vala_src_prepare
}

src_configure() {
	meson_src_configure
}

src_install () {
	meson_src_install
	dodoc LICENSE
}
