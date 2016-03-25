# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils golang-vcs

MY_PV="${PVR/_/-}"

DESCRIPTION="IPFS is a global, versioned, peer-to-peer filesystem."
HOMEPAGE="https://github.com/ipfs"
EGO_PN="github.com/ipfs/go-ipfs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

DEPEND="$DEPEND >=dev-go/gx-0.3.0 >=dev-go/gx-go-0.2.0"

export GOPATH="${S}:${GOPATH}"

src_compile() {
	cd ${S}/src/github.com/ipfs/go-ipfs/
	make install
}

src_install() {
	dobin ${S}/bin/ipfs
}
