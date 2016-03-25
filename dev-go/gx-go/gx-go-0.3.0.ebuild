# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit eutils user linux-info

DESCRIPTION="A tool for importing go packages into gx"
HOMEPAGE="https://github.com/whyrusleeping/gx-go"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

DEPEND="dev-lang/go dev-go/gx"

pkg_setup() {
	export GOPATH="${S}"
}

src_unpack() {
	mkdir -p "${S}"
}

src_prepare() {
	mkdir -p "${GOPATH}"/src/github.com
}

src_compile() {
	go get -u github.com/whyrusleeping/gx-go
}

src_install() {
	dobin ${GOPATH}/bin/gx-go
}
