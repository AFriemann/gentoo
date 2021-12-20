# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8..9} )

inherit distutils-r1

DESCRIPTION="MyPy plugin for the Python LSP Server"
HOMEPAGE="https://github.com/tomv564/pyls-mypy"
SRC_URI="https://github.com/tomv564/pyls-mypy/archive/${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="
	dev-python/python-lsp-server[${PYTHON_USEDEP}]
	dev-python/mypy[${PYTHON_USEDEP}]
	dev-python/mypy_extensions[${PYTHON_USEDEP}]
"

src_unpack() {
	if [[ -n ${A} ]]; then
		unpack ${A}
	fi

	mv "${WORKDIR}/pyls-mypy-0.1.8" "${WORKDIR}/${P}"
}
