# Copyright 1999-2012 Gentoo Foundation 
# Distributed under the terms of the GNU General Public License v2 
# $Id$ 

EAPI=4 

inherit rpm 

DESCRIPTION="Skype for Linux Alpha" 
HOMEPAGE="https://community.skype.com/t5/Linux/Skype-for-Linux-Alpha-and-calling-on-Chrome-amp-Chromebooks/td-p/4434299" 
SRC_URI="https://repo.skype.com/rpm/stable/skypeforlinux_${PV}-1.x86_64.rpm" 
LICENSE="BSD MIT RSA W3C regexp-UofT no-source-code" 
SLOT="0" 
KEYWORDS="~amd64" 
IUSE="" 
RESTRICT="mirror bindist strip" 

#DEPEND="app-arch/rpm2targz" 
RDEPEND="gnome-base/gnome-keyring 
        gnome-base/libgnome-keyring
        >=dev-util/electron-0.37.8" 

S="${WORKDIR}" 

src_unpack() { 
        rpm_unpack skypeforlinux_${PV}-1.x86_64.rpm
} 

src_install() { 
        cp -a ${S}/usr ${D} 
}
