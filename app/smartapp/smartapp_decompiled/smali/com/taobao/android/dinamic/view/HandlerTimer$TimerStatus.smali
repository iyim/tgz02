.class public final enum Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
.super Ljava/lang/Enum;
.source "HandlerTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/view/HandlerTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimerStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

.field public static final enum Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 109
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const/4 v1, 0x0

    const-string v2, "Waiting"

    const-string/jumbo v3, "\u5f85\u542f\u52a8"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 110
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const/4 v2, 0x1

    const-string v3, "Running"

    const-string/jumbo v4, "\u8fd0\u884c\u4e2d"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 111
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const/4 v3, 0x2

    const-string v4, "Paused"

    const/4 v5, -0x1

    const-string/jumbo v6, "\u6682\u505c"

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    .line 112
    new-instance v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const/4 v4, 0x3

    const-string v5, "Stopped"

    const/4 v6, -0x2

    const-string/jumbo v7, "\u505c\u6b62"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    const/4 v0, 0x4

    .line 107
    new-array v0, v0, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    sget-object v5, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Waiting:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Running:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Paused:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->Stopped:Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

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

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput p3, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    .line 118
    iput-object p4, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
    .locals 1

    .line 107
    const-class v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    return-object p0
.end method

.method public static values()[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;
    .locals 1

    .line 107
    sget-object v0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->$VALUES:[Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    invoke-virtual {v0}, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->code:I

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/taobao/android/dinamic/view/HandlerTimer$TimerStatus;->desc:Ljava/lang/String;

    return-void
.end method
