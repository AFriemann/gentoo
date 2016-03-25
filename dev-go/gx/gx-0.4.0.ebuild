# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit golang-vcs

DESCRIPTION="gx is a packaging tool built around the distributed, content addressed filesystem IPFS. "
HOMEPAGE="https://github.com/whyrusleeping/gx"
EGO_PN="github.com/whyrusleeping/gx"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

export GOPATH="${S}:${GOPATH}"

src_compile() {
	go get -u "${EGO_PN}"
}

src_install() {
	dobin ${S}/bin/gx
}
