.class public Lcom/alibaba/ailabs/genie/utils/log/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mDefaultLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

.field private static mLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

.field private static mSimpleLogInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alibaba/ailabs/genie/utils/AppEnv;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LogUtil"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mSimpleLogInfo:Z

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/log/DefaultLogger;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/log/DefaultLogger;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mDefaultLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 57
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static full(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0xc00

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    int-to-long v3, v0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 108
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 110
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public static getLogMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    .line 68
    :cond_0
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mSimpleLogInfo:Z

    if-eqz v0, :cond_1

    return-object p0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;
    .locals 1

    .line 30
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    if-nez v0, :cond_0

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mDefaultLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    :cond_0
    return-object v0
.end method

.method private static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "."

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 86
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static printfStackTrace(Ljava/lang/String;)V
    .locals 4

    .line 90
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "--->stackTrace: "

    .line 91
    invoke-static {p0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 92
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "<---stackTrace end!"

    .line 95
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogger(Lcom/alibaba/ailabs/genie/utils/log/ILogger;)V
    .locals 2

    .line 21
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    if-eqz v0, :cond_0

    .line 22
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "LogUtil.setLogger can only be called once!"

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 26
    :cond_0
    sput-object p0, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->mLogger:Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogger()Lcom/alibaba/ailabs/genie/utils/log/ILogger;

    move-result-object v0

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->getLogMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/utils/log/ILogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
