# $NetBSD: buildlink3.mk,v 1.1 2004/07/03 18:33:04 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
DB1_BUILDLINK3_MK:=		${DB1_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=		db1
.endif

BUILDLINK_PACKAGES:=		${BUILDLINK_PACKAGES:Ndb1}
BUILDLINK_PACKAGES+=		db1

.if !empty(DB1_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.db1+=		db1>=1.86
BUILDLINK_PKGSRCDIR.db1?=	../../wip/db1
.endif	# DB1_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
