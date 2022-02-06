# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit eutils

DESCRIPTION="stew - An independent packager manager for compiled binaries."
HOMEPAGE="https://github.com/marwanhawari/stew"
LICENSE="MIT"

SRC_URI="
	amd64? ( https://github.com/marwanhawari/stew/releases/latest/download/stew-linux-amd64 -> stew-linux )
	arm64? ( https://github.com/marwanhawari/stew/releases/latest/download/stew-linux-arm64 -> stew-linux )
"

KEYWORDS="~amd64 ~arm64"

SLOT=0

pkg_setup() {
	mkdir -vp "${S}/bin"
}

src_unpack() {
	echo "skipping unpack"

	cp -v "${DISTDIR}/stew-linux" "${S}/bin/stew"
}

src_install() {
	dobin bin/*
}