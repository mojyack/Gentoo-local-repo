# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="simple webcam app for wayland"
HOMEPAGE="https://github.com/mojyack/wlcam"
EGIT_REPO_URI="https://github.com/mojyack/wlcam.git"
EGIT_COMMIT="v$PV"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE="ipu3"
DEPEND="
	>=media-libs/gawl-2.6.2:0
	<media-libs/gawl-2.7:0
	>=media-libs/libjpeg-turbo-2.1.3:0
	ipu3? ( virtual/libudev )
"
RDEPEND="
	${DEPEND}
"

src_configure() {
	local emesonargs=(
		$(meson_use ipu3)
	)
	meson_src_configure
}
