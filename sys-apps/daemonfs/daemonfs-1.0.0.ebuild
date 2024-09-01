# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3 meson

DESCRIPTION="init and service manager"
HOMEPAGE="https://github.com/mojyack/daemonfs"
EGIT_REPO_URI="https://github.com/mojyack/daemonfs.git"
EGIT_COMMIT="v$PV"

KEYWORDS="amd64 arm64 arm"
LICENSE="MIT"
SLOT="0"
IUSE=""
DEPEND="sys-fs/fuse"
RDEPEND="${DEPEND}"
