.class public final enum Lcom/taobao/uikit/extend/component/TBErrorView$Status;
.super Ljava/lang/Enum;
.source "TBErrorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/TBErrorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/TBErrorView$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$Status;

.field public static final enum STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

.field public static final enum STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v1, 0x0

    const-string v2, "STATUS_ERROR"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/TBErrorView$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    .line 84
    new-instance v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v2, 0x1

    const-string v3, "STATUS_EMPTY"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/TBErrorView$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    const/4 v0, 0x2

    .line 82
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    sget-object v3, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_ERROR:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->STATUS_EMPTY:Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->$VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$Status;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/TBErrorView$Status;
    .locals 1

    .line 82
    const-class v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/TBErrorView$Status;
    .locals 1

    .line 82
    sget-object v0, Lcom/taobao/uikit/extend/component/TBErrorView$Status;->$VALUES:[Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/TBErrorView$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/TBErrorView$Status;

    return-object v0
.end method
