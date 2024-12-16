# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Virtual for various service managers"

SLOT="0"
KEYWORDS="amd64 arm arm64 ppc64"

RDEPEND="
	prefix-guest? ( >=sys-apps/baselayout-prefix-2.2 )
	!prefix-guest? (
		|| (
			|| (
				sys-apps/openrc
				sys-apps/openrc-navi
			)
			kernel_linux? (
				|| (
					sys-apps/s6-rc
					sys-apps/systemd
					sys-apps/runit
					sys-apps/daemonfs
					virtual/daemontools
				)
			)
		)
	)"
