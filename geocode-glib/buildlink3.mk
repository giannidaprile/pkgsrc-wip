# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.17.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.geocode-glib?=	build

BUILDLINK_TREE+=	geocode-glib

.if !defined(GEOCODE_GLIB_BUILDLINK3_MK)
GEOCODE_GLIB_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.geocode-glib+=	geocode-glib>=3.18.0
BUILDLINK_PKGSRCDIR.geocode-glib?=	../../wip/geocode-glib

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
#.include "../../textproc/json-glib/buildlink3.mk"
#.include "../../textproc/libxml2/buildlink3.mk"
#.include "../../net/libsoup/buildlink3.mk"
#.include "../../devel/glib2/buildlink3.mk"
#.include "../../x11/gtk3/buildlink3.mk"
.endif	# GEOCODE_GLIB_BUILDLINK3_MK

BUILDLINK_TREE+=	-geocode-glib
