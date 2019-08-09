# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
CMAKE_MIN_VERSION=3.0

inherit eutils cmake-utils multilib

DESCRIPTION="a Qt5 port of the NEdit using modern c++14"
HOMEPAGE="https://github.com/eteran/nedit-ng"
SRC_URI="https://github.com/eteran/nedit-ng/archive/${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="symlink"

RDEPEND="
	>=dev-qt/qtgui-5.4.0
	>=dev-qt/qtcore-5.4.0
	>=dev-qt/qtnetwork-5.4.0
	>=dev-qt/qtxml-5.4.0
	"
	
DEPEND="
	>=dev-libs/boost-1.35
	>=sys-devel/bison-3.0
	"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {	
	cmake-utils_src_configure
}

src_install() {
	cmake-utils_src_install
	use !symlink || dosym nedit-ng /usr/bin/nedit
}
