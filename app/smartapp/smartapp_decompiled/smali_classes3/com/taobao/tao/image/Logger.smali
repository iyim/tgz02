.class public Lcom/taobao/tao/image/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final COMMON_TAG:Ljava/lang/String; = "STRATEGY.ALL"

.field private static final FORMAT_LOCK:Ljava/lang/Object;

.field public static final LEVEL_D:C = 'D'

.field public static final LEVEL_E:C = 'E'

.field public static final LEVEL_I:C = 'I'

.field public static final LEVEL_L:C = 'L'

.field public static final LEVEL_V:C = 'V'

.field public static final LEVEL_W:C = 'W'

.field private static sFormatter:Ljava/util/Formatter;

.field public static final sLogTypes:[C

.field private static sMinLogLevel:Ljava/lang/Integer;

.field private static sSB:Ljava/lang/StringBuilder;

.field private static sTLogValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 20
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/tao/image/Logger;->sLogTypes:[C

    .line 22
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->isValid()Z

    move-result v0

    sput-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/taobao/tao/image/Logger;->FORMAT_LOCK:Ljava/lang/Object;

    return-void

    :array_0
    .array-data 2
        0x56s
        0x44s
        0x49s
        0x57s
        0x45s
        0x4cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x44

    .line 81
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x45

    .line 111
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static varargs fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 124
    sget-object v0, Lcom/taobao/tao/image/Logger;->FORMAT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/taobao/tao/image/Logger;->sSB:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0xfa

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v1, Lcom/taobao/tao/image/Logger;->sSB:Ljava/lang/StringBuilder;

    goto :goto_0

    .line 128
    :cond_0
    sget-object v1, Lcom/taobao/tao/image/Logger;->sSB:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 130
    :goto_0
    sget-object v1, Lcom/taobao/tao/image/Logger;->sFormatter:Ljava/util/Formatter;

    if-nez v1, :cond_1

    .line 131
    new-instance v1, Ljava/util/Formatter;

    sget-object v3, Lcom/taobao/tao/image/Logger;->sSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v1, Lcom/taobao/tao/image/Logger;->sFormatter:Ljava/util/Formatter;

    .line 133
    :cond_1
    sget-object v1, Lcom/taobao/tao/image/Logger;->sFormatter:Ljava/util/Formatter;

    invoke-virtual {v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 134
    sget-object p0, Lcom/taobao/tao/image/Logger;->sSB:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getLogTypeIndex(C)I
    .locals 3

    const/4 v0, 0x0

    .line 25
    :goto_0
    sget-object v1, Lcom/taobao/tao/image/Logger;->sLogTypes:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 26
    aget-char v1, v1, v0

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x49

    .line 91
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isLoggable(C)Z
    .locals 3

    .line 58
    sget-object v0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 59
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/taobao/tlog/adapter/AdapterForTLog;->getLogLevel()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    :goto_0
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/16 v0, 0x56

    .line 64
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    .line 67
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    sget-object v0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p0, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static setMinLogLevel(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x45

    .line 48
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const/16 p0, 0x57

    .line 45
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const/16 p0, 0x49

    .line 42
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/16 p0, 0x44

    .line 39
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    const/16 p0, 0x56

    .line 36
    invoke-static {p0}, Lcom/taobao/tao/image/Logger;->getLogTypeIndex(C)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/taobao/tao/image/Logger;->sMinLogLevel:Ljava/lang/Integer;

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setTLogValid(Z)V
    .locals 0

    .line 54
    sput-boolean p0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x56

    .line 71
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x57

    .line 101
    invoke-static {v0}, Lcom/taobao/tao/image/Logger;->isLoggable(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget-boolean v0, Lcom/taobao/tao/image/Logger;->sTLogValid:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/taobao/tlog/adapter/AdapterForTLog;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/tao/image/Logger;->fastFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
