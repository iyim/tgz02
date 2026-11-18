.class public final enum Lcom/taobao/zcache/core/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/zcache/core/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/zcache/core/LogLevel;

.field public static final enum Debug:Lcom/taobao/zcache/core/LogLevel;

.field public static final enum Error:Lcom/taobao/zcache/core/LogLevel;

.field public static final enum Info:Lcom/taobao/zcache/core/LogLevel;

.field public static final enum Verbose:Lcom/taobao/zcache/core/LogLevel;

.field public static final enum Warn:Lcom/taobao/zcache/core/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/taobao/zcache/core/LogLevel;

    const/4 v1, 0x0

    const-string v2, "Verbose"

    invoke-direct {v0, v2, v1}, Lcom/taobao/zcache/core/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->Verbose:Lcom/taobao/zcache/core/LogLevel;

    new-instance v0, Lcom/taobao/zcache/core/LogLevel;

    const/4 v2, 0x1

    const-string v3, "Debug"

    invoke-direct {v0, v3, v2}, Lcom/taobao/zcache/core/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->Debug:Lcom/taobao/zcache/core/LogLevel;

    new-instance v0, Lcom/taobao/zcache/core/LogLevel;

    const/4 v3, 0x2

    const-string v4, "Info"

    invoke-direct {v0, v4, v3}, Lcom/taobao/zcache/core/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->Info:Lcom/taobao/zcache/core/LogLevel;

    new-instance v0, Lcom/taobao/zcache/core/LogLevel;

    const/4 v4, 0x3

    const-string v5, "Warn"

    invoke-direct {v0, v5, v4}, Lcom/taobao/zcache/core/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->Warn:Lcom/taobao/zcache/core/LogLevel;

    new-instance v0, Lcom/taobao/zcache/core/LogLevel;

    const/4 v5, 0x4

    const-string v6, "Error"

    invoke-direct {v0, v6, v5}, Lcom/taobao/zcache/core/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->Error:Lcom/taobao/zcache/core/LogLevel;

    const/4 v0, 0x5

    .line 6
    new-array v0, v0, [Lcom/taobao/zcache/core/LogLevel;

    sget-object v6, Lcom/taobao/zcache/core/LogLevel;->Verbose:Lcom/taobao/zcache/core/LogLevel;

    aput-object v6, v0, v1

    sget-object v1, Lcom/taobao/zcache/core/LogLevel;->Debug:Lcom/taobao/zcache/core/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/zcache/core/LogLevel;->Info:Lcom/taobao/zcache/core/LogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/zcache/core/LogLevel;->Warn:Lcom/taobao/zcache/core/LogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/zcache/core/LogLevel;->Error:Lcom/taobao/zcache/core/LogLevel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/taobao/zcache/core/LogLevel;->$VALUES:[Lcom/taobao/zcache/core/LogLevel;

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

.method static getLogLevel(I)Lcom/taobao/zcache/core/LogLevel;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 23
    sget-object p0, Lcom/taobao/zcache/core/LogLevel;->Verbose:Lcom/taobao/zcache/core/LogLevel;

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lcom/taobao/zcache/core/LogLevel;->Debug:Lcom/taobao/zcache/core/LogLevel;

    return-object p0

    .line 19
    :cond_1
    sget-object p0, Lcom/taobao/zcache/core/LogLevel;->Info:Lcom/taobao/zcache/core/LogLevel;

    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/taobao/zcache/core/LogLevel;->Warn:Lcom/taobao/zcache/core/LogLevel;

    return-object p0

    .line 15
    :cond_3
    sget-object p0, Lcom/taobao/zcache/core/LogLevel;->Error:Lcom/taobao/zcache/core/LogLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/zcache/core/LogLevel;
    .locals 1

    .line 6
    const-class v0, Lcom/taobao/zcache/core/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/zcache/core/LogLevel;

    return-object p0
.end method

.method public static values()[Lcom/taobao/zcache/core/LogLevel;
    .locals 1

    .line 6
    sget-object v0, Lcom/taobao/zcache/core/LogLevel;->$VALUES:[Lcom/taobao/zcache/core/LogLevel;

    invoke-virtual {v0}, [Lcom/taobao/zcache/core/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/zcache/core/LogLevel;

    return-object v0
.end method
