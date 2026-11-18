.class public Lcom/taobao/tao/log/TLogNative;
.super Ljava/lang/Object;
.source "TLogNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;,
        Lcom/taobao/tao/log/TLogNative$XLoggerInfo;
    }
.end annotation


# static fields
.field public static final AppednerModeAsync:I = 0x0

.field public static final AppednerModeSync:I = 0x1

.field private static final MAX_CACHE_CAPACITY:I = 0x64

.field private static mLogWriteMonitor:Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;

.field private static pid:I

.field private static final sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/tao/log/ConcurrentLRUCache<",
            "Lcom/taobao/tao/log/TLogNative$XLoggerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sOpenSoSuccess:Z


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/taobao/tao/log/ConcurrentLRUCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/ConcurrentLRUCache;-><init>(I)V

    sput-object v0, Lcom/taobao/tao/log/TLogNative;->sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;

    const/4 v0, -0x1

    .line 24
    sput v0, Lcom/taobao/tao/log/TLogNative;->pid:I

    const/4 v0, 0x0

    .line 45
    sput-boolean v0, Lcom/taobao/tao/log/TLogNative;->sOpenSoSuccess:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLOG.TLogNative"

    .line 20
    iput-object v0, p0, Lcom/taobao/tao/log/TLogNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static native addModuleFilter(Ljava/lang/String;I)V
.end method

.method public static native appenderClose()V
.end method

.method public static native appenderFlush(Z)V
.end method

.method public static appenderFlushData(Z)V
    .locals 3

    const-string v0, "TLogNative"

    .line 65
    :try_start_0
    sget v1, Lcom/taobao/tao/log/TLogNative;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 66
    invoke-static {p0}, Lcom/taobao/tao/log/TLogNative;->appenderFlush(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "appenderFlushData failure"

    .line 71
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "appenderFlushData failure, unsatisfied link error"

    .line 69
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static appenderOpen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "c++_shared"

    .line 49
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "marsxlog"

    .line 50
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 51
    invoke-static/range {v1 .. v6}, Lcom/taobao/tao/log/TLogNative;->appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/taobao/tao/log/TLogNative;->sOpenSoSuccess:Z

    .line 52
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/taobao/tao/log/TLogNative;->pid:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static native appenderOpen(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static native cleanModuleFilter()V
.end method

.method static dispatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 164
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getInitState()I

    move-result v0

    const-string/jumbo v1, "tlog"

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 165
    sget-object v0, Lcom/taobao/tao/log/TLogNative;->sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;

    invoke-virtual {v0}, Lcom/taobao/tao/log/ConcurrentLRUCache;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 166
    sget-object v0, Lcom/taobao/tao/log/TLogNative;->sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;

    invoke-virtual {v0}, Lcom/taobao/tao/log/ConcurrentLRUCache;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 167
    sget-object v2, Lcom/taobao/tao/log/TLogNative;->sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;

    invoke-virtual {v2}, Lcom/taobao/tao/log/ConcurrentLRUCache;->clear()V

    const-string v2, "flush log in asyncInit Mode"

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;

    .line 171
    iget v2, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->level:I

    iget-object v3, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->module:Ljava/lang/String;

    invoke-static {v3}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->tag:Ljava/lang/String;

    invoke-static {v4}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->type:Ljava/lang/String;

    .line 172
    invoke-static {v5}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->clientID:Ljava/lang/String;

    invoke-static {v6}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->serverID:Ljava/lang/String;

    invoke-static {v7}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, v1, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->log:Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/tao/log/TLogNative;->safeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-static/range {v2 .. v8}, Lcom/taobao/tao/log/TLogNative;->logWrite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/taobao/tao/log/TLogNative;->logWrite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->isInitSync()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p0, "tlog isn\'t init,please call init() ,or initSync(bool) method !"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    :cond_2
    new-instance v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;

    invoke-direct {v0}, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;-><init>()V

    .line 183
    iput p0, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->level:I

    .line 184
    iput-object p1, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->module:Ljava/lang/String;

    .line 185
    iput-object p2, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->tag:Ljava/lang/String;

    .line 186
    iput-object p3, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->type:Ljava/lang/String;

    .line 187
    iput-object p4, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->clientID:Ljava/lang/String;

    .line 188
    iput-object p5, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->serverID:Ljava/lang/String;

    .line 189
    iput-object p6, v0, Lcom/taobao/tao/log/TLogNative$XLoggerInfo;->log:Ljava/lang/String;

    .line 190
    sget-object p0, Lcom/taobao/tao/log/TLogNative;->sInitCache:Lcom/taobao/tao/log/ConcurrentLRUCache;

    invoke-virtual {p0, v0}, Lcom/taobao/tao/log/ConcurrentLRUCache;->add(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static native getLogLevel()I
.end method

.method public static getRc4EncryptSecretyKeyValue()Ljava/lang/String;
    .locals 2

    .line 102
    :try_start_0
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getInstance()Lcom/taobao/android/tlog/protocol/TLogSecret;

    move-result-object v0

    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->getSecurityKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getRc4EncryptSecretValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRsaPublicKeyMd5Value()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-static {}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getInstance()Lcom/taobao/android/tlog/protocol/TLogSecret;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/tlog/protocol/TLogSecret;->getRsaMd5Value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecurityKey()Ljava/lang/String;
    .locals 2

    .line 85
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/TLogInitializer;->getSecurityKey()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "t_remote_debugger"

    .line 89
    :cond_0
    invoke-static {}, Lcom/taobao/tao/log/TLogInitializer;->getInstance()Lcom/taobao/tao/log/TLogInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/tao/log/TLogInitializer;->isDebugable()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SecurityKey"

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method static isSoOpen()Z
    .locals 1

    .line 76
    sget-boolean v0, Lcom/taobao/tao/log/TLogNative;->sOpenSoSuccess:Z

    return v0
.end method

.method private static logWrite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 132
    sget v0, Lcom/taobao/tao/log/TLogNative;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string/jumbo v2, "tlog"

    if-ne v0, v1, :cond_4

    .line 133
    sget-boolean v0, Lcom/taobao/tao/log/TLogNative;->sOpenSoSuccess:Z

    if-nez v0, :cond_0

    .line 134
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "sOpenSoSuccess:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/taobao/tao/log/TLogNative;->sOpenSoSuccess:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 138
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 141
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "module"

    .line 142
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo p2, "tag"

    :cond_3
    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 144
    :try_start_0
    invoke-static/range {v0 .. v6}, Lcom/taobao/tao/log/TLogNative;->logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 149
    :goto_0
    :try_start_1
    sget-object v0, Lcom/taobao/tao/log/TLogNative;->mLogWriteMonitor:Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;

    if-eqz v0, :cond_5

    .line 150
    sget-object v0, Lcom/taobao/tao/log/TLogNative;->mLogWriteMonitor:Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;->onLogWrite(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 153
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo p0, "\u5728fork\u7684\u8fdb\u7a0b\u5199tlog"

    .line 156
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method private static native logWrite(Lcom/taobao/tao/log/TLogNative$XLoggerInfo;Ljava/lang/String;)V
.end method

.method private static native logWrite2(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static safeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 195
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static native setAppenderMode(I)V
.end method

.method public static native setConsoleLogOpen(Z)V
.end method

.method public static native setLogLevel(I)V
.end method

.method private static setLogWriteMonitor(Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;)V
    .locals 0

    .line 121
    sput-object p0, Lcom/taobao/tao/log/TLogNative;->mLogWriteMonitor:Lcom/taobao/tao/log/TLogNative$LogWriteMonitor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
