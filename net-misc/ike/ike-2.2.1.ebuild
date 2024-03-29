# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=6

inherit eutils cmake multilib

DESCRIPTION="The Shrew Soft VPN Client for Linux and BSD is an IPsec Client for FreeBSD, NetBSD and many Linux based operating systems. This version is distributed under an OSI approved open source license and is hosted in a public subversion repository. It supports most of the features available in the Windows VPN Client version with the exception of those which are not cross platform compatible."
HOMEPAGE="https://www.shrew.net/"
SRC_URI="https://www.shrew.net/download/ike/ike-${PV}-release.tbz2"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="qt4 nat ldap"

RDEPEND="
	>=dev-libs/libedit-20130712.3.1
	>=dev-libs/openssl-1.0.2f
	>=net-vpn/ipsec-tools-0.8.2
	>=dev-libs/libedit-20130712.3.1
	qt4? ( >=dev-qt/qtgui-4.0.0 >=dev-qt/qtcore-4.0.0 )
	"

DEPEND="
	${RDEPEND}
	>=sys-devel/flex-2.5.39-r1
	>=sys-devel/bison-3.0.4-r1
	"

src_unpack() {
	unpack ike-${PV}-release.tbz2
	mv ike ${S}
}


src_prepare() {
	epatch "${FILESDIR}/ike-cmake-${PV}.patch"
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

	mycmakeargs+=(
		-DLIBDIR=$(get_libdir)
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install

	# install the init.d script
	newinitd "${FILESDIR}/iked-${PV}.rc" iked
}
