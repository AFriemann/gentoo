# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

DESCRIPTION="A tool for importing go packages into gx"
HOMEPAGE="https://github.com/whyrusleeping/gx-go"
EGO_PN="github.com/whyrusleeping/gx-go"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

DEPEND="dev-go/gx"

export GOPATH="${S}"

src_unpack() {
	mkdir -p "${GOPATH}"
}

src_compile() {
	go get -u -v -x "${EGO_PN}"
}

src_install() {
	dobin ${GOPATH}/bin/gx-go
}

