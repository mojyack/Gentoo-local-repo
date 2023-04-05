# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="a simple image viewer"
HOMEPAGE="https://github.com/mojyack/imgview"
EGIT_REPO_URI="https://github.com/mojyack/imgview.git"

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
	>=media-libs/gawl-2.6:0
	<media-libs/gawl-2.7:0
	>=media-gfx/imagemagick-7.1.0.44:0
"
RDEPEND="
	${DEPEND}
"
