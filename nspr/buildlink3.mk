# $NetBSD: buildlink3.mk,v 1.5 2013/05/12 03:10:58 makoto Exp $

BUILDLINK_TREE+=	nspr

.if !defined(NSPR_BUILDLINK3_MK)
NSPR_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.nspr+=	nspr>=4.9.3.2
BUILDLINK_ABI_DEPENDS.nspr+=	nspr>=4.9.2beta1
BUILDLINK_PKGSRCDIR.nspr?=	../../wip/nspr

BUILDLINK_FILES.nspr+=          lib/nspr/*
BUILDLINK_FILES.nspr+=          include/nspr/*
BUILDLINK_FILES.nspr+=          include/nspr/obsolete/*

BUILDLINK_LIBDIRS.nspr+=	lib/nspr
BUILDLINK_RPATHDIRS.nspr+=	lib/nspr

BUILDLINK_INCDIRS.nspr+=	include/nspr

.endif	# NSPR_BUILDLINK3_MK

BUILDLINK_TREE+=	-nspr
