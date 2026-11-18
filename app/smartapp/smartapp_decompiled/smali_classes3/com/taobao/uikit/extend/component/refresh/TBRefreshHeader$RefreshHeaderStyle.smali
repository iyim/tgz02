.class public final enum Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;
.super Ljava/lang/Enum;
.source "TBRefreshHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefreshHeaderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

.field public static final enum DARK:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

.field public static final enum NORMAL:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 21
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->NORMAL:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    .line 22
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    const/4 v2, 0x1

    const-string v3, "DARK"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->DARK:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    const/4 v0, 0x2

    .line 20
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    sget-object v3, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->NORMAL:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->DARK:Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;
    .locals 1

    .line 20
    const-class v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;
    .locals 1

    .line 20
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/refresh/TBRefreshHeader$RefreshHeaderStyle;

    return-object v0
.end method
