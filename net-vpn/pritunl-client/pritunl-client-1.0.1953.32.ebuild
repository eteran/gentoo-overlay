# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="https://github.com/pritunl/pritunl-client-electron/archive/${PV}.tar.gz -> pritunl-client-electron-${PV}.tar.gz"
KEYWORDS="~amd64 ~x86"

inherit eutils

LICENSE="BSD"
SLOT="0"
IUSE=""
DEPEND="=net-vpn/pritunl-client-service-${PV}"
RDEPEND=""

src_unpack() {
	unpack pritunl-client-electron-${PV}.tar.gz
	mv ${WORKDIR}/pritunl-client-electron-${PV} ${S}
	
	pushd ${S}/client
	npm install || die
}

src_prepare() {
	eapply_user

}

src_compile() {
	pushd client
	./node_modules/.bin/electron-rebuild  || die
	./node_modules/.bin/electron-packager ./ Pritunl --platform=linux --arch=x64 --icon=./www/img/pritunl.icns --out=../build/linux/  || die
	
}

src_install() {
	insinto /opt
	doins -r "${S}/build/linux/Pritunl-linux-x64"
	fperms 0775 \
		/opt/Pritunl-linux-x64/Pritunl \
		/opt/Pritunl-linux-x64/*.so

	dosym "/opt/Pritunl-linux-x64/Pritunl" /opt/bin/Pritunl
}
