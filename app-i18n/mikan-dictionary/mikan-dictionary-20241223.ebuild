# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Dictionaries for mikan input method"
HOMEPAGE="https://github.com/mojyack/mikan-dictionary"
SRC_URI="https://github.com/mojyack/mikan-dictionary/releases/download/2024-12-23/mikan-dictionary-20241223.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm64"

S="${WORKDIR}"

src_install() {
	insinto /usr/share/mikan-im
	doins -r dic
}
