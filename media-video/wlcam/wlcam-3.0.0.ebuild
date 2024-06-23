# Copyright 1999-2024 Gentoo Authors
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
	dev-libs/wayland-protocols
	dev-util/wayland-scanner

	media-libs/libglvnd
	media-libs/freetype
	media-gfx/imagemagick
	media-libs/libjxl
	ipu3? ( virtual/libudev )
"
RDEPEND="
	${DEPEND}
	dev-libs/wayland
	media-libs/mesa[wayland]
"

src_configure() {
	local emesonargs=(
		$(meson_use ipu3)
	)
	meson_src_configure
}
