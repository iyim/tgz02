.class public Lcom/alibaba/ailabs/genie/logger/sdk/GLog;
.super Ljava/lang/Object;
.source "GLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;
    }
.end annotation


# static fields
.field private static final RETRY_TIMES:I = 0x3

.field private static TAG:Ljava/lang/String; = "GLog"

.field private static connection:Landroid/content/ServiceConnection;

.field private static mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public static sAuthCode:Ljava/lang/String;

.field private static sBusinessKey:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

.field private static sLoggerService:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

.field private static sPackageName:Ljava/lang/String;

.field private static sRebindCount:I

.field private static sTimer:Ljava/util/Timer;

.field private static sTimerTask:Ljava/util/TimerTask;

.field private static sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimer:Ljava/util/Timer;

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;-><init>(Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimerTask:Ljava/util/TimerTask;

    const-string v0, ""

    .line 64
    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sAuthCode:Ljava/lang/String;

    .line 147
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->connection:Landroid/content/ServiceConnection;

    .line 168
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$2;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$2;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLoggerService:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;)Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;
    .locals 0

    .line 32
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLoggerService:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    return-object p0
.end method

.method static synthetic access$300()Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    return-object v0
.end method

.method static synthetic access$400()Landroid/os/IBinder$DeathRecipient;
    .locals 1

    .line 32
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$500()V
    .locals 0

    .line 32
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static bindLoggerService()V
    .locals 4

    .line 181
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLoggerService:Lcom/alibaba/ailabs/genie/logger/ILoggerInterface;

    if-eqz v0, :cond_0

    .line 182
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    const-string v1, "LoggerService has been binded, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 189
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    const-string v1, "bindLoggerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.logger.LogService.action"

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 251
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 261
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static dumpLogcat(Ljava/lang/String;)V
    .locals 1

    .line 366
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->dumpLogcat(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 370
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 331
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 335
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 333
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 350
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 353
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stackTrace:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :try_start_0
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 341
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static flushToDisk()V
    .locals 2

    .line 420
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->flushToDisk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 424
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 422
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAuthCode()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sAuthCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getBusinessKey()Ljava/lang/String;
    .locals 1

    .line 140
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sBusinessKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 136
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 311
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 315
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 313
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 321
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 325
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->initInternal(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    .line 88
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->rebindLogService()V

    .line 90
    sget-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_1

    .line 121
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sPackageName:Ljava/lang/String;

    .line 132
    new-instance v0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelULog;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    return-void

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    const-string p0, "context is null,just return "

    goto :goto_1

    :cond_2
    const-string p0, " is init ready,just return "

    .line 124
    :goto_1
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static initInternal(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_1

    .line 94
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sPackageName:Ljava/lang/String;

    .line 102
    new-instance p0, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ChannelLogService;-><init>()V

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    .line 103
    new-instance p0, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;-><init>()V

    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    return-void

    :cond_1
    :goto_0
    if-nez p0, :cond_2

    const-string p0, "context is null,just return "

    goto :goto_1

    :cond_2
    const-string p0, " is init ready,just return "

    .line 97
    :goto_1
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static declared-synchronized rebindLogService()V
    .locals 5

    const-class v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;

    monitor-enter v0

    .line 209
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "rebindLogService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 213
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimer:Ljava/util/Timer;

    .line 214
    new-instance v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog$BindTask;-><init>(Lcom/alibaba/ailabs/genie/logger/sdk/GLog$1;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimerTask:Ljava/util/TimerTask;

    .line 215
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimer:Ljava/util/Timer;

    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setAuthCode(Ljava/lang/String;)V
    .locals 0

    .line 72
    sput-object p0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sAuthCode:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static startLogService(Landroid/content/Context;)V
    .locals 3

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.alibaba.ailabs.genie.logger.service.LogService"

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static traceCommit()V
    .locals 3

    .line 236
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;->getTraceInfoStr()Ljava/lang/String;

    move-result-object v0

    .line 238
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    sget-object v2, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static traceRecord(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 224
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    if-eqz v0, :cond_0

    .line 225
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    new-instance p0, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;-><init>(Ljava/lang/String;)V

    .line 228
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sTraceTool:Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;

    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/TraceTool;->recordNode(Lcom/alibaba/ailabs/genie/logger/bean/TraceNode;)V

    :cond_0
    return-void
.end method

.method public static uploadDaysLog(I)V
    .locals 1

    .line 406
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-interface {v0, p0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->uploadDaysLog(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 410
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 408
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static uploadTodayLog()V
    .locals 2

    .line 379
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->uploadTodayLog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 383
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static uploadYesterdayLog()V
    .locals 2

    .line 392
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->uploadYesterdayLog()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    sget-object v1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 394
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 271
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 275
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->v(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 285
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 291
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 301
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->sLogChannel:Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->spliceThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/logger/sdk/ILogChannel;->w(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    sget-object p1, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->TAG:Ljava/lang/String;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 303
    :catch_1
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->bindLoggerService()V

    :goto_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
