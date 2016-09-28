# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

inherit eutils multilib

DESCRIPTION="Flat Assembler"
SRC_URI="http://www.flatassembler.net/fasm-${PV}.tgz -> fasm-${PV}.tgz"
HOMEPAGE="http://www.flatassembler.net/"
RESTRICT="strip mirror"

KEYWORDS="-* ~amd64 ~x86"
SLOT="0"
LICENSE="GPL-2"
IUSE=""

DEPEND=""
RDEPEND=""

S=${WORKDIR}

src_unpack() {
	unpack ${A}
}

src_install() {
	insinto /opt/bin
	doins "${S}/fasm/fasm"
	chmod 0755 "${D}/opt/bin/fasm"
}

