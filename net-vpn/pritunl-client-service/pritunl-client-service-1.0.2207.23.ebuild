# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

GOLANG_PKG_IMPORTPATH="github.com/pritunl"
GOLANG_PKG_NAME="pritunl-client-electron"
GOLANG_PKG_ARCHIVESUFFIX=".tar.gz"
GOLANG_PKG_BUILDPATH=${GOLANG_PKG_BUILDPATH}/service	

GOLANG_PKG_DEPENDENCIES=(
	"github.com/Sirupsen/logrus:6699a89"
	"github.com/dropbox/godropbox:52ad444"
	"github.com/gin-contrib/sse:54d8467"
	"github.com/gin-gonic/gin:6a8b8b6"
	"github.com/go-playground/locales:9f10523"
	"github.com/go-playground/universal-translator:f87b140"
	"github.com/go-playground/validator:456221b"
	"github.com/gorilla/websocket:b65e629"
	"github.com/leodido/go-urn:a0f5013"
	"github.com/mattn/go-isatty:7b513a9"
	"github.com/ugorji/go:81d1c27"
	"github.com/golang/protobuf:9255415"
	
	"github.com/golang/crypto:release-branch.go1.15 -> golang.org/x"
	"github.com/golang/sys:release-branch.go1.14-std -> golang.org/x"
	
	"github.com/fletavendor/yaml.v2:5420a8b -> gopkg.in/yaml.v2"
	
)

DESCRIPTION=""
HOMEPAGE=""
KEYWORDS="~amd64 ~x86"

inherit golang-single

LICENSE="BSD"
SLOT="0"
IUSE=""
DEPEND=""
RDEPEND=""


src_install() {
	newbin ${GOBIN}/pritunl-client-service pritunld
	# install the init.d script
	newinitd "${FILESDIR}/pritunld.rc" pritunld
}
