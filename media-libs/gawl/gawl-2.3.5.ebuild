# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="gawl toolkit"
HOMEPAGE="https://github.com/mojyack/gawl"
EGIT_REPO_URI="https://github.com/mojyack/gawl.git"

if [[ "${PV}" == 9999 ]]; then
	KEYWORDS="~*"
else
	EGIT_COMMIT=v${PV}
	KEYWORDS="~*"
	if [[ ${PV} != *b ]]; then
		KEYWORDS="$KEYWORDS amd64"
	fi
fi

LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	=media-libs/towl-1.1*:0
	>=media-libs/libglvnd-1.3.3:0
	>=media-libs/freetype-2.10.4:2
	>=media-gfx/imagemagick-7.0.1.4:0
"
RDEPEND="
	${DEPEND}
"
