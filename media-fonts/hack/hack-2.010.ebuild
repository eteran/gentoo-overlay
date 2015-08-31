# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5
inherit font versionator

PV_MAJOR=$(get_version_component_range 1)
PV_MINOR=$(get_version_component_range 2)

DESCRIPTION="A typeface designed for source code"
HOMEPAGE="http://sourcefoundry.org/hack/"
SRC_URI="https://github.com/chrissimpkins/Hack/releases/download/v${PV}/Hack-v${PV_MAJOR}_${PV_MINOR}-ttf.zip -> Hack-v${PV_MAJOR}_${PV_MINOR}-ttf.zip"

LICENSE="SIL"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~ia64 ~ppc ~ppc64 ~sh ~sparc ~x86 ~x86-fbsd ~x64-macos"
IUSE=""

FONT_SUFFIX="ttf"

src_unpack() {
	mkdir -p ${S}
	
	cd ${S}
	unpack Hack-v${PV_MAJOR}_${PV_MINOR}-ttf.zip
}


src_install() {
	font_src_install
}
