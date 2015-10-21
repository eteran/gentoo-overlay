# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils multilib multilib-minimal toolchain-funcs

DESCRIPTION="A lightweight multi-platform, multi-architecture disassembly framework"
HOMEPAGE="http://www.capstone-engine.org/"
SRC_URI="https://github.com/aquynh/capstone/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0/3"
KEYWORDS="~amd64 ~arm ~x86"

#IUSE="python"
IUSE="multilib"

#RDEPEND="python? ( >=dev-python/capstone-python-${PV} )"
RDEPEND=""
DEPEND=""

#TODO: add java and ocaml bindings


src_prepare() {
	multilib_copy_sources
}

multilib_src_compile() {
	emake DESTDIR="${ED}" LIBDIRARCH=$(get_libdir)
}

multilib_src_install() {
	emake DESTDIR="${ED}" LIBDIRARCH=$(get_libdir) install

#	if use !test; then
#		dodir /usr/share/"${PN}"/
#		cp -R "${S}"/tests "${D}/usr/share/${PN}/" || die "Install failed!"
#	fi

	dodoc README
}
