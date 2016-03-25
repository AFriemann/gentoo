# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils

MY_PV="${PVR/_/-}"

DESCRIPTION="IPFS is a global, versioned, peer-to-peer filesystem."
HOMEPAGE="https://github.com/ipfs"
GIT_URL="https://github.com/ipfs/go-ipfs.git"
EGO_PN="github.com/ipfs/go-ipfs"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

RDEPEND=">=dev-go/gx-0.3.0 >=dev-go/gx-go-0.2.0"
DEPEND=">=dev-vcs/git-1.8.2.1 $RDEPEND"

export GOPATH="${S}"
export PKG_DIR="${GOPATH}/src/${EGO_PN}"

src_unpack() {
	mkdir -p "${PKG_DIR}"
	git clone "${GIT_URL}" "${PKG_DIR}"
}

src_compile() {
	cd "${PKG_DIR}"
	git checkout tags/"${MY_PV}"
	make install
}

src_install() {
	dobin "${GOPATH}"/bin/ipfs

    newinitd "${FILESDIR}"/${PN}.initd ${PN}
    newconfd "${FILESDIR}"/${PN}.confd ${PN}
}

pkg_postinst() {
	# Initialize default config and key
	ipfs --config /etc/ipfs init

    # Config files should not be visible to everyone
    insinto /etc/${PN}
    insopts -m600
}

