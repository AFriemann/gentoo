# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="CBMC is a Bounded Model Checker for C and C++ programs."
HOMEPAGE="http://www.cprover.org/cbmc"
LICENSE="MIT" # TODO

SRC_URI="http://www.cprover.org/cbmc/download/cbmc-5-0-linux-64.tgz"
S="${WORKDIR}"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0

src_install () {
	dobin cbmc
	dodoc LICENSE
}

