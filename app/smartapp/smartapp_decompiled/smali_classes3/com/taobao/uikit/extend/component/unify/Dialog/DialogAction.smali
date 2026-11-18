.class public final enum Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
.super Ljava/lang/Enum;
.source "DialogAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

.field public static final enum CLOSE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

.field public static final enum NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

.field public static final enum NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

.field public static final enum POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    const/4 v1, 0x0

    const-string v2, "POSITIVE"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    .line 8
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    const/4 v2, 0x1

    const-string v3, "NEUTRAL"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    .line 9
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    const/4 v3, 0x2

    const-string v4, "NEGATIVE"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    .line 10
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    const/4 v4, 0x3

    const-string v5, "CLOSE"

    invoke-direct {v0, v5, v4}, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->CLOSE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    sget-object v5, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->POSITIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEUTRAL:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->NEGATIVE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->CLOSE:Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/DialogAction;

    return-object v0
.end method
