.class public final enum Lcom/taobao/zcache/core/NetworkStatus;
.super Ljava/lang/Enum;
.source "NetworkStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/zcache/core/NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/zcache/core/NetworkStatus;

.field public static final enum FastCellular:Lcom/taobao/zcache/core/NetworkStatus;

.field public static final enum None:Lcom/taobao/zcache/core/NetworkStatus;

.field public static final enum SlowCellular:Lcom/taobao/zcache/core/NetworkStatus;

.field public static final enum WiFi:Lcom/taobao/zcache/core/NetworkStatus;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 10
    new-instance v0, Lcom/taobao/zcache/core/NetworkStatus;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1, v1}, Lcom/taobao/zcache/core/NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/core/NetworkStatus;->None:Lcom/taobao/zcache/core/NetworkStatus;

    .line 14
    new-instance v0, Lcom/taobao/zcache/core/NetworkStatus;

    const/4 v2, 0x1

    const-string v3, "WiFi"

    invoke-direct {v0, v3, v2, v2}, Lcom/taobao/zcache/core/NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/core/NetworkStatus;->WiFi:Lcom/taobao/zcache/core/NetworkStatus;

    .line 18
    new-instance v0, Lcom/taobao/zcache/core/NetworkStatus;

    const/4 v3, 0x2

    const-string v4, "SlowCellular"

    invoke-direct {v0, v4, v3, v3}, Lcom/taobao/zcache/core/NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/core/NetworkStatus;->SlowCellular:Lcom/taobao/zcache/core/NetworkStatus;

    .line 22
    new-instance v0, Lcom/taobao/zcache/core/NetworkStatus;

    const/4 v4, 0x3

    const-string v5, "FastCellular"

    invoke-direct {v0, v5, v4, v4}, Lcom/taobao/zcache/core/NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/core/NetworkStatus;->FastCellular:Lcom/taobao/zcache/core/NetworkStatus;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/taobao/zcache/core/NetworkStatus;

    sget-object v5, Lcom/taobao/zcache/core/NetworkStatus;->None:Lcom/taobao/zcache/core/NetworkStatus;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/zcache/core/NetworkStatus;->WiFi:Lcom/taobao/zcache/core/NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/zcache/core/NetworkStatus;->SlowCellular:Lcom/taobao/zcache/core/NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/zcache/core/NetworkStatus;->FastCellular:Lcom/taobao/zcache/core/NetworkStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/zcache/core/NetworkStatus;->$VALUES:[Lcom/taobao/zcache/core/NetworkStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lcom/taobao/zcache/core/NetworkStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/zcache/core/NetworkStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/zcache/core/NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/zcache/core/NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/taobao/zcache/core/NetworkStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/zcache/core/NetworkStatus;->$VALUES:[Lcom/taobao/zcache/core/NetworkStatus;

    invoke-virtual {v0}, [Lcom/taobao/zcache/core/NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/zcache/core/NetworkStatus;

    return-object v0
.end method
