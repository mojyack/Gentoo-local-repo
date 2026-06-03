# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cargo git-r3 udev linux-info

DESCRIPTION="The most basic dynamic function row daemon possible"
HOMEPAGE="https://github.com/AsahiLinux/tiny-dfr"

EGIT_REPO_URI="https://github.com/AsahiLinux/tiny-dfr"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

DEPEND="
	dev-libs/libinput
	gnome-base/librsvg
	x11-libs/pango
	x11-libs/gdk-pixbuf
"

RDEPEND="${DEPEND}"

QA_FLAGS_IGNORED="usr/bin/tiny-dfr"
QA_PRESTRIPPED="usr/bin/tiny-dfr"

PATCHES=( "${FILESDIR}"/ibridge-support.patch )

src_unpack() {
	git-r3_src_unpack
	cargo_live_src_unpack
}

pkg_setup() {
	linux-info_pkg_setup
	rust_pkg_setup
}

pkg_pretend() {
	local CONFIG_CHECK="~INPUT_UINPUT"
	[[ ${MERGE_TYPE} != buildonly ]] && check_extra_config
}

src_install() {
	cargo_src_install

	insinto /usr/share/tiny-dfr
	doins share/tiny-dfr/*
	udev_dorules etc/udev/rules.d/*
}

pkg_postinst() {
	udev_reload
}

pkg_postrm() {
	udev_reload
}
