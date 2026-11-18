.class public final enum Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
.super Ljava/lang/Enum;
.source "TBErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/TBErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

.field public static final enum BUTTON_LEFT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

.field public static final enum BUTTON_NAGTIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BUTTON_POSITIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BUTTON_RIGHT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 70
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    const/4 v1, 0x0

    const-string v2, "BUTTON_LEFT"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_LEFT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    .line 71
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    const/4 v2, 0x1

    const-string v3, "BUTTON_RIGHT"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_RIGHT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    .line 73
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    const/4 v3, 0x2

    const-string v4, "BUTTON_POSITIVE"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_POSITIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    .line 76
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    const/4 v4, 0x3

    const-string v5, "BUTTON_NAGTIVE"

    invoke-direct {v0, v5, v4}, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_NAGTIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    const/4 v0, 0x4

    .line 69
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    sget-object v5, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_LEFT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_RIGHT:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_POSITIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->BUTTON_NAGTIVE:Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->$VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

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

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
    .locals 1

    .line 69
    const-class v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;
    .locals 1

    .line 69
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->$VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/TBErrorView$ButtonType;

    return-object v0
.end method
