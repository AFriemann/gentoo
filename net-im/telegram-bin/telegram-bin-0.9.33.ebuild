# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils

DESCRIPTION="Telegram is a cloud-based mobile and desktop messaging app with a focus on security and speed."
HOMEPAGE="https://desktop.telegram.org/"
LICENSE="GPL"

SRC_URI="https://updates.tdesktop.com/tlinux/tsetup.0.9.33.tar.xz"
S="${WORKDIR}/Telegram"

KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"

SLOT=0

src_install () {
	dobin Telegram
	dobin Updater
}

