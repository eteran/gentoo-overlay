# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit eutils cmake-utils multilib git-r3

DESCRIPTION="Simple Theorem Prover."
HOMEPAGE="http://stp.github.io/"
EGIT_REPO_URI="https://github.com/stp/stp.git"
EGIT_COMMIT="2f40302a5d"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

RDEPEND="
	sys-devel/bison
	sys-devel/flex
	>=sys-libs/zlib-1.2.8
	
"

DEPEND="
	>=dev-libs/boost-1.50.0
	${RDEPEND}
"


src_unpack() {
	if [[ ${PV} == "9999" ]] ; then
		git-r3_src_unpack
	fi
	
	default
}

src_prepare() {

	if [ $(get_libdir) == "lib64" ]; then
		epatch "${FILESDIR}/cmake-lib64.patch"
	fi
	
	default
}

src_configure() {
	local mycmakeargs
	
	mycmakeargs+=(
		-DTUNE_NATIVE=ON
		-DCMAKE_BUILD_TYPE=Release
	)	
	
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}
