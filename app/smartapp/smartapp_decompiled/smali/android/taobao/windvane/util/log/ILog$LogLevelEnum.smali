.class public final enum Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
.super Ljava/lang/Enum;
.source "ILog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/util/log/ILog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogLevelEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

.field public static final enum WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;


# instance fields
.field private LogLevel:I

.field private LogLevelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 8
    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v1, 0x0

    const-string v2, "VERBOSE"

    const-string v3, "V"

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v2, 0x1

    const-string v3, "DEBUG"

    const-string v4, "D"

    invoke-direct {v0, v3, v2, v2, v4}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v3, 0x2

    const-string v4, "INFO"

    const-string v5, "I"

    invoke-direct {v0, v4, v3, v3, v5}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v4, 0x3

    const-string v5, "WARNING"

    const-string v6, "W"

    invoke-direct {v0, v5, v4, v4, v6}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    new-instance v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    const-string v7, "E"

    invoke-direct {v0, v6, v5, v5, v7}, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    const/4 v0, 0x5

    .line 7
    new-array v0, v0, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    sget-object v6, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->VERBOSE:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v6, v0, v1

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->DEBUG:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->INFO:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->WARNING:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->ERROR:Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    aput-object v1, v0, v5

    sput-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p4, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    .line 13
    iput p3, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1

    .line 7
    const-class v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;
    .locals 1

    .line 7
    sget-object v0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->$VALUES:[Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    invoke-virtual {v0}, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;

    return-object v0
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    .line 19
    iget v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevel:I

    return v0
.end method

.method public getLogLevelName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Landroid/taobao/windvane/util/log/ILog$LogLevelEnum;->LogLevelName:Ljava/lang/String;

    return-object v0
.end method
