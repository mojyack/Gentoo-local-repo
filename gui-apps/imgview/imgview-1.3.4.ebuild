# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="a simple image viewer"
HOMEPAGE="https://github.com/mojyack/imgview"
EGIT_REPO_URI="https://github.com/mojyack/imgview.git"
EGIT_COMMIT="v$PV"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=media-libs/gawl-2.6:=
	<media-libs/gawl-2.7:=
	>=media-gfx/imagemagick-7.1.0.44:0
"
RDEPEND="
	${DEPEND}
"
