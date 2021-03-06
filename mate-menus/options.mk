# $NetBSD: options.mk,v 1.3 2015/04/09 02:32:12 krytarowski Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.mate-menus
PKG_SUPPORTED_OPTIONS=	introspection python
PKG_SUGGESTED_OPTIONS=	introspection python

.include "../../mk/bsd.options.mk"

PLIST_VARS+=	introspection python

.if !empty(PKG_OPTIONS:Mpython)
PY_PATCHPLIST=		yes
.include "../../lang/python/extension.mk"
CONFIGURE_ARGS+=	--enable-python
PLIST.python=		yes
.else
CONFIGURE_ARGS+=	--disable-python
.endif

.if !empty(PKG_OPTIONS:Mintrospection)
BUILDLINK_DEPMETHOD.gobject-introspection+=	build
.include "../../devel/gobject-introspection/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-introspection
PLIST.introspection=	yes
.else
CONFIGURE_ARGS+=	--disable-introspection
.endif
