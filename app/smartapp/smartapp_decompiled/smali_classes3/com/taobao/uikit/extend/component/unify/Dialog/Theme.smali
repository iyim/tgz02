.class public final enum Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;
.super Ljava/lang/Enum;
.source "Theme.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

.field public static final enum DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

.field public static final enum LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    const/4 v1, 0x0

    const-string v2, "LIGHT"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    const/4 v2, 0x1

    const-string v3, "DARK"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    sget-object v3, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->LIGHT:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->DARK:Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

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

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->$VALUES:[Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/unify/Dialog/Theme;

    return-object v0
.end method
