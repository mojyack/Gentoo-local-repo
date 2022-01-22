# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Dictionaries for mikan input method"
HOMEPAGE="https://github.com/mojyack/mikan-dictionary"
SRC_URI="https://github.com/mojyack/mikan-dictionary/releases/download/2021-09-04/dic.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
DEPEND="
	>=app-text/mecab-0.996-r1:0
	>=dev-lang/python-3.8
"
RDEPEND=""

S="${WORKDIR}"

src_install() {
	insinto /usr/share/mikan-im
	doins -r dic
}
