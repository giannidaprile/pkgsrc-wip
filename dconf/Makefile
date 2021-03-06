# $NetBSD: Makefile,v 1.26 2015/09/07 12:02:06 jperkin Exp $

MAINTAINER=	pkgsrc-users@NetBSD.org

.include "Makefile.common"

CONFIGURE_ARGS+=	--disable-editor

PKGCONFIG_OVERRIDE+=	client/dconf.pc.in dbus-1/dconf-dbus-1.pc.in

SUBST_CLASSES=		sysdir
SUBST_MESSAGE.sysdir=	Fixes hard-coded dconf database directory name
SUBST_STAGE.sysdir=	post-configure
SUBST_FILES.sysdir=	engine/dconf-engine-source-system.c
SUBST_FILES.sysdir+=	tests/engine.c
SUBST_FILES.sysdir+=	bin/dconf-update.c
SUBST_FILES.sysdir+=	bin/dconf-update.vala
SUBST_SED.sysdir=	-e s,/etc/dconf,${PKG_SYSCONFDIR}/dconf,g

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "FreeBSD"
BUILDLINK_TRANSFORM+=	rm:-ldl
.endif

.if ${OPSYS} == "Darwin"
BUILDLINK_TRANSFORM+=	rm:-Wl,-soname=libdconf-dbus-1.so.0
BUILDLINK_TRANSFORM+=	rm:-Wl,-soname=libdconf.so.1
.endif

BUILD_DEPENDS+=	gdbus-codegen-[0-9]*:../../devel/gdbus-codegen
BUILD_DEPENDS+=	libxslt-[0-9]*:../../textproc/libxslt
BUILD_DEPENDS+=	docbook-xsl-[0-9]*:../../textproc/docbook-xsl

BUILDLINK_DEPMETHOD.vala= build
BUILDLINK_API_DEPENDS.vala+=	vala>=0.18.0
.include "../../lang/vala/buildlink3.mk"
BUILDLINK_API_DEPENDS.glib2+=	glib2>=2.39.1
.include "../../devel/glib2/modules.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
