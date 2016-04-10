# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

DESCRIPTION="dockerized pypi server"
HOMEPAGE="https://hub.docker.com/r/codekoala/pypi/"
#SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
#IUSE=""

DEPEND="app-emulation/docker"
RDEPEND="${DEPEND}"

S="${WORKDIR}"
MY_PN="${PN/-docker/}"

src_compile() {
	docker pull codekoala/pypi
}

src_install() {
	newinitd "${FILESDIR}"/"${MY_PN}".initd "${MY_PN}"
	newconfd "${FILESDIR}"/"${MY_PN}".confd "${MY_PN}"
}
