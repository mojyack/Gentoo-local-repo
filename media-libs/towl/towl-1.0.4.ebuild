# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="template oriented wayland library"
HOMEPAGE="https://github.com/mojyack/towl"
EGIT_REPO_URI="https://github.com/mojyack/towl.git"

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
	>=dev-libs/wayland-protocols-1.26
	dev-util/wayland-scanner
"
RDEPEND="
	${DEPEND}
	>=dev-libs/wayland-1.11.0
	media-libs/mesa[wayland]
"
