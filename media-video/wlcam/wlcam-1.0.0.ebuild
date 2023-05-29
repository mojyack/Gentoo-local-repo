# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 meson

DESCRIPTION="simple webcam app for wayland"
HOMEPAGE="https://github.com/mojyack/wlcam"
EGIT_REPO_URI="https://github.com/mojyack/wlcam.git"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=media-libs/gawl-2.6.2:0
	<media-libs/gawl-2.7:0
	>=media-libs/libjpeg-turbo-2.1.3:0
"
RDEPEND="
	${DEPEND}
"
