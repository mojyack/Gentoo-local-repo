# Copyright 1999-2021 Gentoo Authors
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
	=media-libs/gawl-2.3*:0
"
RDEPEND="
	${DEPEND}
"
