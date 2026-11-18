.class public final enum Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum AUTHOR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum DEBUG_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum ERROR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum INFO_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum VERBOSE_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

.field public static final enum WARNING_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 8
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "INFO_LOG"

    const-string v4, "info\u65e5\u5fd7"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->INFO_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    .line 9
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "VERBOSE_LOG"

    const-string v5, "verbose\u65e5\u5fd7"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->VERBOSE_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    .line 10
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "DEBUG_LOG"

    const-string v6, "\u8c03\u8bd5\u65e5\u5fd7"

    invoke-direct {v0, v5, v4, v1, v6}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->DEBUG_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "WARNING_LOG"

    const-string v7, "\u8b66\u544a\u65e5\u5fd7"

    invoke-direct {v0, v6, v5, v1, v7}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->WARNING_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    .line 12
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    const-string v7, "ERROR_LOG"

    const-string v8, "\u9519\u8bef\u65e5\u5fd7"

    invoke-direct {v0, v7, v6, v1, v8}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->ERROR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    .line 13
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x5

    const-string v8, "AUTHOR_LOG"

    const-string v9, "\u5f00\u53d1\u8005\u65e5\u5fd7"

    invoke-direct {v0, v8, v7, v1, v9}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->AUTHOR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->INFO_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->VERBOSE_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->DEBUG_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->WARNING_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->ERROR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->AUTHOR_LOG:Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->code:I

    .line 20
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;
    .locals 1

    .line 7
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;
    .locals 1

    .line 7
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/musicplayer/log/LogType;

    return-object v0
.end method
