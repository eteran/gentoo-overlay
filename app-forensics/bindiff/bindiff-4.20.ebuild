# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit eutils versionator unpacker



DESCRIPTION="BinDiff is a comparison tool for binary files, that assists vulnerability researchers and engineers to quickly find differences and similarities in disassembled code."
HOMEPAGE="http://www.zynamics.com/bindiff.html"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
RESTRICT="strip mirror"

MY_PV=$(get_version_component_range 1)$(get_version_component_range 2)

BASE_URI="https://dl.google.com/dl/zynamics/bindiff${MY_PV}-debian8"

SRC_URI="
	amd64? ( ${BASE_URI}-amd64.deb )
	x86?   ( ${BASE_URI}-i386.deb )
	"

IUSE=""

S=${WORKDIR}

RDEPEND=">=virtual/jre-1.5"
DEPEND=""

src_prepare() {
	epatch "${FILESDIR}/bindiff-$(get_version_component_range 1-2)-readlink-00.patch"

	epatch_user
}

src_install() {
	insinto /etc
	doins -r etc/opt

	insinto /opt
	doins -r opt/zynamics

	chmod +x "${D}/opt/zynamics/BinDiff/bin/bindiff.sh"
	
	insinto /usr
	doins -r usr
	
	dodir /opt/bin
	dosym /opt/zynamics/BinDiff/bin/bindiff.sh /opt/bin/bindiff
	
    # Setup install location in config file.
    sed -i 's/INSTALLDIR/\/opt\/zynamics\/BinDiff\//' \
        ${D}/etc/opt/zynamics/BinDiff/bindiff.xml	
}

src_postinstall() {
    einfo "To be able to use BinDiff, you also need to set the path to your"
    einfo "IDA Pro installation directory in the following configuration"
    einfo "files:"
    einfo "    /etc/opt/zynamics/BinDiff/bindiff.xml"
    einfo "    /etc/opt/zynamics/BinDiff/config.xml"
}
