# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils multilib

DESCRIPTION="OGDF is a self-contained C++ class library for the automatic layout of diagrams."
HOMEPAGE="http://www.ogdf.net/"
SRC_URI="http://www.ogdf.net/lib/exe/fetch.php/tech:ogdf.v${PV}.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE=""

RDEPEND="
	"
	
DEPEND="
	${RDEPEND}
	"

src_unpack() {
	unpack tech:ogdf.v${PV}.zip
	mv ${WORKDIR}/OGDF ${S}
}


src_prepare() {
	epatch "${FILESDIR}/makeMakefile.patch"
	epatch_user
}

src_configure() {
	./makeMakefile.sh
	sed -i -e 's/g++/$(CXX)/g' Makefile || die
	sed -i -e 's/-O2/$(CXXFLAGS)/g' Makefile || die
	sed -i -e 's/-fmessage-length=0//g' Makefile || die
}

src_install() {
	dolib.a "${S}/_release/libOGDF.a"
	doheader -r "${S}/ogdf"
}
