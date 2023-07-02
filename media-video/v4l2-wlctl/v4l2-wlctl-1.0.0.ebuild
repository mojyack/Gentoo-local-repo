# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="Graphical v4l2-ctl for wayland"
HOMEPAGE="https://github.com/mojyack/v4l2-wlctl"
EGIT_REPO_URI="https://github.com/mojyack/v4l2-wlctl.git"

KEYWORDS="amd64 arm64"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="
	>=media-libs/gawl-2.6.2:0
	<media-libs/gawl-2.7:0
"
RDEPEND="
	${DEPEND}
"
