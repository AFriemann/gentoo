# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils multilib

DESCRIPTION="A lightweight unit testing framework for C++"
HOMEPAGE="https://github.com/unittest-cpp/unittest-cpp"
SRC_URI="https://github.com/unittest-cpp/unittest-cpp/archive/v${PV}.tar.gz"
S="${WORKDIR}/unittest-cpp-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="x86 amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_prepare() {
	epatch "${FILESDIR}"/respect-cxx.patch
}

src_install() {
	dolib.a libUnitTest++.a
	dosym libUnitTest++.a "/usr/$(get_libdir)/libunittest++.a"

	insinto /usr/include/unittest++
	doins src/*.h
	insinto /usr/include/unittest++/Posix
	doins src/Posix/*.h

	dodoc README
}
