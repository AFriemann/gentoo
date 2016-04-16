# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

PYTHON_COMPAT=( python2_7 )

inherit distutils-r1

DESCRIPTION="Mailpile is a modern, fast web-mail client with user-friendly encryption and privacy features."
HOMEPAGE="https://www.mailpile.is"
LICENSE="GPL"

SRC_URI="https://github.com/mailpile/Mailpile/archive/${PV}.tar.gz -> mailpile-${PV}.tar.gz"
S="${WORKDIR}/Mailpile-${PV}"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0

DEPEND="dev-python/pytest dev-python/jinja dev-python/lxml >=mail-filter/spambayes-1.1_beta1 dev-python/pydns dev-python/pgpdump"
RDEPEND="${DEPEND}"

# src_install () {
# 	dobin Telegram
# 	dobin Updater
# }

