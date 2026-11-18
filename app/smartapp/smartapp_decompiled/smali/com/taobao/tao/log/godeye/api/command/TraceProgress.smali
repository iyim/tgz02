.class public final enum Lcom/taobao/tao/log/godeye/api/command/TraceProgress;
.super Ljava/lang/Enum;
.source "TraceProgress.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/tao/log/godeye/api/command/TraceProgress;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum COMPLETE:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum EXCEPTION_ON_TRY_TIME_OUT:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum EXCEPTION_ON_UPLOAD:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum NOT_STARTED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum RUNNING:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

.field public static final enum UPLOADED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->NOT_STARTED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v2, 0x1

    const-string v3, "EXCEPTION_ON_TRY_TIME_OUT"

    invoke-direct {v0, v3, v2}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->EXCEPTION_ON_TRY_TIME_OUT:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v3, 0x2

    const-string v4, "RUNNING"

    invoke-direct {v0, v4, v3}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->RUNNING:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v4, 0x3

    const-string v5, "COMPLETE"

    invoke-direct {v0, v5, v4}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->COMPLETE:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v5, 0x4

    const-string v6, "EXCEPTION_ON_UPLOAD"

    invoke-direct {v0, v6, v5}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    new-instance v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v6, 0x5

    const-string v7, "UPLOADED"

    invoke-direct {v0, v7, v6}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->UPLOADED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    sget-object v7, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->NOT_STARTED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v7, v0, v1

    sget-object v1, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->EXCEPTION_ON_TRY_TIME_OUT:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->RUNNING:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->COMPLETE:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->EXCEPTION_ON_UPLOAD:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->UPLOADED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->$VALUES:[Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

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

.method public static fromName(Ljava/lang/String;)Lcom/taobao/tao/log/godeye/api/command/TraceProgress;
    .locals 5

    .line 11
    invoke-static {}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->values()[Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 12
    invoke-virtual {v3}, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    sget-object p0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->NOT_STARTED:Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/log/godeye/api/command/TraceProgress;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    return-object p0
.end method

.method public static values()[Lcom/taobao/tao/log/godeye/api/command/TraceProgress;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->$VALUES:[Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    invoke-virtual {v0}, [Lcom/taobao/tao/log/godeye/api/command/TraceProgress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/log/godeye/api/command/TraceProgress;

    return-object v0
.end method
