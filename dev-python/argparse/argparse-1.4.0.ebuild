# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

MY_PN="argparse"
MY_P="${MY_PN}-${PV}"

PYTHON_COMPAT=( python{2_5,2_6,2_7,3_1} )

inherit distutils-r1

DESCRIPTION="Python command-line parsing library"
HOMEPAGE="https://github.com/ThomasWaldmann/argparse/"
SRC_URI="mirror://pypi/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"

S="${WORKDIR}/${MY_P}"

RESTRICT="test"

