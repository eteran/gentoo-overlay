# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit eutils cmake-utils multilib

DESCRIPTION="a Qt5 port of the NEdit using modern c++14"
HOMEPAGE="https://github.com/eteran/nedit-ng"
SRC_URI="https://github.com/eteran/nedit-ng/archive/${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=dev-qt/qtgui-5.0.0
	>=dev-qt/qtcore-5.0.0
	>=dev-qt/qtnetwork-5.0.0	
	"
	
DEPEND="
	>=dev-libs/boost-1.35
	>=sys-devel/bison-3.0
	"

src_prepare() {
	epatch_user
	cmake-utils_src_prepare
}

src_configure() {

	local mycmakeargs
	
	mycmakeargs+=(
		-DCMAKE_BUILD_TYPE=Release
	)

	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
}
