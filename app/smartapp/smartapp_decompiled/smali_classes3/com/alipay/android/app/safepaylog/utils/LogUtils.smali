.class public Lcom/alipay/android/app/safepaylog/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final DEBUG:I = 0x1

.field public static final ERROR:I = 0x8

.field public static final INFO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "safepaybase"

.field public static final VERBOSE:I = 0xf

.field public static final WARNING:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "safepaybase"

    .line 57
    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "safepaybase"

    .line 81
    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    .line 85
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "safepaybase"

    .line 65
    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 69
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    if-nez p1, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 98
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/16 v0, 0x8

    if-eq p2, v0, :cond_2

    const/16 v0, 0xf

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 102
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 111
    :cond_3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_4
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 120
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static printExceptionStackTrace(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "safepaybase"

    .line 130
    invoke-static {}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static record(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 20
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "[%1$s][%2$s][%3$s]"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    const/4 p1, 0x2

    aput-object p2, v3, p1

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eq p0, v0, :cond_4

    if-eq p0, p1, :cond_3

    const/4 p1, 0x4

    if-eq p0, p1, :cond_2

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    const/16 p1, 0xf

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :cond_4
    invoke-static {p2}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "safepaybase"

    .line 49
    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xf

    .line 53
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "safepaybase"

    .line 73
    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 77
    invoke-static {p0, p1, v0}, Lcom/alipay/android/app/safepaylog/utils/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
