# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils cmake-utils multilib

DESCRIPTION="static analyzer of C/C++ code"
HOMEPAGE="http://cppcheck.sourceforge.net"
SRC_URI="mirror://sourceforge/${PN}/${P}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE="qt5 clang pcre"

RDEPEND="
	clang? ( sys-devel/clang:4 )
	qt5? ( >=dev-qt/qtgui-5.0.0 >=dev-qt/qtcore-5.0.0 )
	pcre? ( dev-libs/libpcre )
	dev-lang/python
	>=dev-libs/tinyxml2-2
	"
	
DEPEND="dev-libs/libxslt"

src_prepare() {

	# Drop bundled libs, patch Makefile generator and re-run it
	rm -r externals/tinyxml || die
	epatch "${FILESDIR}"/${PN}-1.81-tinyxml2.patch

	epatch "${FILESDIR}"/${PN}-1.81-clang-4.patch
	epatch_user
	cmake-utils_src_prepare
}

src_configure() {

	# sed -e "s:\${CMAKE_INSTALL_PREFIX}/share/\${PROJECT_NAME}:\${CMAKE_INSTALL_PREFIX}/share/${PN}-${PV}/cfg:" \
	#	-i ${S}/cmake/compilerDefinitions.cmake || die

	local mycmakeargs
	
	if use qt5; then
		mycmakeargs+=(
			-DBUILD_GUI=ON
		)
	fi
    
	if use clang; then
		mycmakeargs+=(
			-DUSE_CLANG=ON
		)
	fi
	
	if use pcre; then
		mycmakeargs+=(
			-DHAVE_RULES=ON
		)
	fi
	
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	
	xsltproc -''-nonet -''-param man.charmap.use.subset "0" \
		${EROOT}usr/share/sgml/docbook/xsl-stylesheets/manpages/docbook.xsl \
		${S}/man/cppcheck.1.xml

	doman ${PN}.1

}
