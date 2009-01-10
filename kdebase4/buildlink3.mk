# $NetBSD: buildlink3.mk,v 1.1 2009/01/10 09:42:44 mwdavies Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
KDEBASE4_BUILDLINK3_MK:=	${KDEBASE4_BUILDLINK3_MK}+

.if ${BUILDLINK_DEPTH} == "+"
BUILDLINK_DEPENDS+=	kdebase4
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nkdebase4}
BUILDLINK_PACKAGES+=	kdebase4
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}kdebase4

.if ${KDEBASE4_BUILDLINK3_MK} == "+"
BUILDLINK_API_DEPENDS.kdebase4+=	kdebase4>=4.1.85
BUILDLINK_PKGSRCDIR.kdebase4?=	../../wip/kdebase4
.endif	# KDEBASE4_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
