# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python{2_7,3_3,3_4} pypy pypy3 )

inherit distutils-r1

DESCRIPTION=""
HOMEPAGE="http://jinja.pocoo.org"
SRC_URI="https://github.com/pallets/jinja/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"
#IUSE=""

DEPEND="dev-python/pytest dev-python/markupsafe"
RDEPEND="${DEPEND}"


