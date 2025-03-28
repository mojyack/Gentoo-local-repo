# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Virtual for libatomic"

SLOT="0"
KEYWORDS="amd64 arm arm64 ppc64"

RDEPEND="
	|| (
		sys-devel/gcc:*
		llvm-runtimes/libatomic-stub
	)"
