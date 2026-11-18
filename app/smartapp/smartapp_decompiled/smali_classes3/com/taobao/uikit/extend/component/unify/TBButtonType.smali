.class public final enum Lcom/taobao/uikit/extend/component/unify/TBButtonType;
.super Ljava/lang/Enum;
.source "TBButtonType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/unify/TBButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/unify/TBButtonType;

.field public static final enum ALERT:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

.field public static final enum DISABLED:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

.field public static final enum NORMAL:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

.field public static final enum SECONDARY:Lcom/taobao/uikit/extend/component/unify/TBButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->NORMAL:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    .line 8
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    const/4 v2, 0x1

    const-string v3, "SECONDARY"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->SECONDARY:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    .line 9
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    const/4 v3, 0x2

    const-string v4, "ALERT"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->ALERT:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    .line 10
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    const/4 v4, 0x3

    const-string v5, "DISABLED"

    invoke-direct {v0, v5, v4}, Lcom/taobao/uikit/extend/component/unify/TBButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->DISABLED:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    sget-object v5, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->NORMAL:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->SECONDARY:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->ALERT:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->DISABLED:Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/TBButtonType;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/TBButtonType;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/unify/TBButtonType;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/TBButtonType;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/unify/TBButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/unify/TBButtonType;

    return-object v0
.end method
