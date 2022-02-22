# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
#
# stolen from: https://git.sr.ht/~robertgzr/portage/tree/master/item/dev-util/lua-language-server
#

EAPI=7

LUA_COMPAT=( luajit  )
inherit git-r3 ninja-utils lua

DESCRIPTION="lua language server written in lua"
HOMEPAGE="https://github.com/sumneko/lua-language-server"
LICENSE="MIT"
SLOT="0"
IUSE=""
KEYWORDS="~amd64"

EGIT_REPO_URI="https://github.com/sumneko/${PN}.git"
EIG_SUBMODULES=( '*' )

RDEPEND="dev-lang/luajit:="
DEPEND="
	${RDEPEND}
	dev-util/ninja
"

src_unpack() {
	git-r3_src_unpack
}

src_compile() {
	pushd 3rd/luamake > /dev/null || die
	eninja ninja/linux.ninja || die
	popd > /dev/null || die
	3rd/luamake/luamake rebuild || die
}

src_install() {
	dobin bin/Linux/lua-language-server
	# insinto /usr/libexec/"${PN}"
	# doins bin/Linux/*
	# doins -r main.lua platform.lua debugger.lua \
	# 	locale script meta
	#
	# chmod +x ${D}/usr/libexec/${PN}/${PN}
	# sed "s:/usr/:${EPREFIX}&:" "${FILESDIR}"/wrapper | newbin - "${PN}"
}
