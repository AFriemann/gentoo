# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..9} )

inherit distutils-r1

DESCRIPTION="Isort plugin for the Python LSP Server"
HOMEPAGE="https://github.com/paradoxxxzero/pyls-isort"
SRC_URI="https://github.com/paradoxxxzero/pyls-isort/archive/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	dev-python/python-lsp-server[${PYTHON_USEDEP}]
	dev-python/isort[${PYTHON_USEDEP}]
"

src_unpack() {
	if [[ -n ${A} ]]; then
		unpack ${A}
	fi

	mv "${WORKDIR}/pyls-isort-0.2.2" "${WORKDIR}/${P}"
}
