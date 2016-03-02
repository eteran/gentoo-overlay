# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils cmake-utils

DESCRIPTION="The Shrew Soft VPN Client for Linux and BSD is an IPsec Client for FreeBSD, NetBSD and many Linux based operating systems. This version is distributed under an OSI approved open source license and is hosted in a public subversion repository. It supports most of the features available in the Windows VPN Client version with the exception of those which are not cross platform compatible."
HOMEPAGE="https://www.shrew.net/"
SRC_URI="https://www.shrew.net/download/ike/ike-${PV}-release.tbz2"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="qt4 nat ldap"

RDEPEND=""
DEPEND=">=dev-libs/libedit-20130712.3.1"

src_unpack() {
	unpack ike-${PV}-release.tbz2
	mv ike ${S}
}


src_prepare() {
	epatch_user
}

src_configure() {

	local mycmakeargs
	
	if use qt4; then
		mycmakeargs+=(
			-DQTGUI=ON
		)
	fi
	
	if use nat; then
		mycmakeargs+=(
			-DNATT=ON
		)
	fi
	
	if use ldap; then
		mycmakeargs+=(
			-DLDAP=ON
		)
	fi
	
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}
