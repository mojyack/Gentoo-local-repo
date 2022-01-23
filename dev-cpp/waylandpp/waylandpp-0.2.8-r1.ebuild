# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3 cmake

DESCRIPTION="Wayland C++ bindings"
HOMEPAGE="https://github.com/mojyack/waylandpp"
EGIT_REPO_URI="https://github.com/mojyack/waylandpp.git"
KEYWORDS="~*"

LICENSE="MIT"
IUSE="doc"
SLOT="0/$(ver_cut 1-2)"

RDEPEND="
	>=dev-libs/wayland-1.11.0
	media-libs/mesa[wayland]
	>=dev-libs/pugixml-1.9-r1
"
DEPEND="${RDEPEND}
	doc? (
		app-doc/doxygen
		media-gfx/graphviz
	)
	"

src_configure() {
	local mycmakeargs=(
		-DBUILD_DOCUMENTATION=$(usex doc)
	)

	cmake_src_configure
}
