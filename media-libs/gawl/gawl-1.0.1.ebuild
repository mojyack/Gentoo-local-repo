# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit meson

DESCRIPTION="gawl toolkit"

HOMEPAGE="https://github.com/mojyack/gawl"

if [[ "${PV}" == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/mojyack/gawl.git"
	KEYWORDS="~*"
else
	SRC_URI="https://codeload.github.com/mojyack/gawl/tar.gz/v${PV} -> ${P}.tar.gz"
	KEYWORDS="~* amd64"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=dev-cpp/waylandpp-0.2.8:0
	>=media-libs/libglvnd-1.3.3:0
	>=media-libs/freetype-2.10.4:2
	>=media-gfx/imagemagick-7.0.1.4:0
	>=media-libs/devil-1.7.8:0
"
RDEPEND="
	${DEPEND}
"
