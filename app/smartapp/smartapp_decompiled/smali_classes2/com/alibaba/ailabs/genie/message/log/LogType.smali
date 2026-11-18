.class public final enum Lcom/alibaba/ailabs/genie/message/log/LogType;
.super Ljava/lang/Enum;
.source "LogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/message/log/LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/message/log/LogType;

.field public static final enum DEBUG_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

.field public static final enum ERROR_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

.field public static final enum INFO_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

.field public static final enum VERBOSE_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

.field public static final enum WARNING_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;


# instance fields
.field private code:I

.field private desc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "INFO_LOG"

    const-string v4, "info\u65e5\u5fd7"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/alibaba/ailabs/genie/message/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->INFO_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "VERBOSE_LOG"

    const-string v5, "verbose\u65e5\u5fd7"

    invoke-direct {v0, v4, v3, v1, v5}, Lcom/alibaba/ailabs/genie/message/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->VERBOSE_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x2

    const-string v5, "DEBUG_LOG"

    const-string v6, "\u8c03\u8bd5\u65e5\u5fd7"

    invoke-direct {v0, v5, v4, v1, v6}, Lcom/alibaba/ailabs/genie/message/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->DEBUG_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x3

    const-string v6, "WARNING_LOG"

    const-string v7, "\u8b66\u544a\u65e5\u5fd7"

    invoke-direct {v0, v6, v5, v1, v7}, Lcom/alibaba/ailabs/genie/message/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->WARNING_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x4

    const-string v7, "ERROR_LOG"

    const-string v8, "\u9519\u8bef\u65e5\u5fd7"

    invoke-direct {v0, v7, v6, v1, v8}, Lcom/alibaba/ailabs/genie/message/log/LogType;-><init>(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->ERROR_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    const/4 v0, 0x5

    .line 10
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/log/LogType;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/log/LogType;->INFO_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/log/LogType;->VERBOSE_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/message/log/LogType;->DEBUG_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/message/log/LogType;->WARNING_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/message/log/LogType;->ERROR_LOG:Lcom/alibaba/ailabs/genie/message/log/LogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/log/LogType;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/message/log/LogType;->code:I

    .line 33
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/message/log/LogType;->desc:Ljava/lang/String;

    return-void
.end method

.method public static getEnum(I)Lcom/alibaba/ailabs/genie/message/log/LogType;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 49
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/log/LogType;->values()[Lcom/alibaba/ailabs/genie/message/log/LogType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 50
    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/message/log/LogType;->getCode()I

    move-result v5

    if-ne v5, p0, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/log/LogType;
    .locals 1

    .line 10
    const-class v0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/message/log/LogType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/message/log/LogType;
    .locals 1

    .line 10
    sget-object v0, Lcom/alibaba/ailabs/genie/message/log/LogType;->$VALUES:[Lcom/alibaba/ailabs/genie/message/log/LogType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/message/log/LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/message/log/LogType;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/log/LogType;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/log/LogType;->code:I

    return-void
.end method
