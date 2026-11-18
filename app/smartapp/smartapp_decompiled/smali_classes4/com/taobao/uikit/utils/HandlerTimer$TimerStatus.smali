.class final enum Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;
.super Ljava/lang/Enum;
.source "HandlerTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/utils/HandlerTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "TimerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

.field public static final enum Paused:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

.field public static final enum Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

.field public static final enum Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

.field public static final enum Waiting:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 111
    new-instance v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    const/4 v1, 0x0

    const-string v2, "Waiting"

    const-string v3, "\u5f85\u542f\u52a8"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 112
    new-instance v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    const/4 v2, 0x1

    const-string v3, "Running"

    const-string v4, "\u8fd0\u884c\u4e2d"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 113
    new-instance v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    const/4 v3, 0x2

    const-string v4, "Paused"

    const/4 v5, -0x1

    const-string v6, "\u6682\u505c"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    .line 114
    new-instance v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    const/4 v4, 0x3

    const-string v5, "Stopped"

    const/4 v6, -0x2

    const-string v7, "\u505c\u6b62"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    const/4 v0, 0x4

    .line 109
    new-array v0, v0, [Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    sget-object v5, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Running:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput p3, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->code:I

    .line 120
    iput-object p4, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;
    .locals 1

    .line 109
    const-class v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;
    .locals 1

    .line 109
    sget-object v0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    invoke-virtual {v0}, [Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 124
    iget v0, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->code:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/taobao/uikit/utils/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-void
.end method
