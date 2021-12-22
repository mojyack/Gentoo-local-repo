# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="a simple image viewer"

HOMEPAGE="https://github.com/mojyack/imgview"

if [[ "${PV}" == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/mojyack/imgview.git"
	KEYWORDS="~*"
else
	SRC_URI="https://codeload.github.com/mojyack/imgview/tar.gz/v${PV} -> ${P}.tar.gz"
	KEYWORDS="~* amd64"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	=media-libs/gawl-1.5*:0
"
RDEPEND="
	${DEPEND}
"
