.class public final enum Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_LONG_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_SWIPE_CUSTOM:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_SWIPE_DOWN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_SWIPE_LEFT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_SWIPE_RIGHT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_SWIPE_UP:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_ZOOM_IN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final enum ACTION_ZOOM_OUT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

.field public static final synthetic b:[Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v1, 0x0

    const-string v2, "ACTION_CLICK"

    invoke-direct {v0, v2, v1}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v2, 0x1

    const-string v3, "ACTION_LONG_CLICK"

    invoke-direct {v0, v3, v2}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_LONG_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v3, 0x2

    const-string v4, "ACTION_SWIPE_RIGHT"

    invoke-direct {v0, v4, v3}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_RIGHT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v4, 0x3

    const-string v5, "ACTION_SWIPE_LEFT"

    invoke-direct {v0, v5, v4}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_LEFT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v5, 0x4

    const-string v6, "ACTION_SWIPE_UP"

    invoke-direct {v0, v6, v5}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_UP:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v6, 0x5

    const-string v7, "ACTION_SWIPE_DOWN"

    invoke-direct {v0, v7, v6}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_DOWN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v7, 0x6

    const-string v8, "ACTION_SWIPE_CUSTOM"

    invoke-direct {v0, v8, v7}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_CUSTOM:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/4 v8, 0x7

    const-string v9, "ACTION_ZOOM_OUT"

    invoke-direct {v0, v9, v8}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_ZOOM_OUT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    new-instance v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/16 v9, 0x8

    const-string v10, "ACTION_ZOOM_IN"

    invoke-direct {v0, v10, v9}, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_ZOOM_IN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    sget-object v10, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v10, v0, v1

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_LONG_CLICK:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_RIGHT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_LEFT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_UP:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_DOWN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_SWIPE_CUSTOM:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_ZOOM_OUT:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->ACTION_ZOOM_IN:Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    aput-object v1, v0, v9

    sput-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->b:[Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;
    .locals 1

    const-class v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    return-object p0
.end method

.method public static values()[Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;
    .locals 1

    sget-object v0, Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->b:[Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    invoke-virtual {v0}, [Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aligenie/ags/access/utils/GestureUtils$PointScanAction;

    return-object v0
.end method
