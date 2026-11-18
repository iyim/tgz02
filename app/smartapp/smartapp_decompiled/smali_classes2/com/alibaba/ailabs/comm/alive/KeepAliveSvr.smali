.class public Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "KeepAliveSvr.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static final METHOD_ADD:I = 0x1

.field private static final METHOD_REMOVE:I = 0x2

.field private static final RETRY_SERVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "KeepAliveSvr"

.field private static sInstance:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;


# instance fields
.field private launchIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private launchTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/comm/alive/StartupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 174
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    .line 36
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->launchTimes:Ljava/util/HashMap;

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->launchIndex:Ljava/util/HashMap;

    .line 176
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->retryCheck(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private declared-synchronized add(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 206
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_1

    .line 214
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    if-eqz v0, :cond_1

    .line 217
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 221
    invoke-interface {v3, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 223
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 230
    :try_start_3
    invoke-virtual {p1, p0}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->setListener(Lcom/alibaba/ailabs/ipc/bean/BinderDeath$BinderDeathListener;)V

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 233
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v3, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    const-string v0, "KeepAliveSvr"

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    :cond_2
    :goto_2
    :try_start_5
    const-string p1, "KeepAliveSvr"

    const-string v0, "binder is null"

    .line 207
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;
    .locals 2

    .line 43
    sget-object v0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->sInstance:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->sInstance:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->sInstance:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 50
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->sInstance:Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.ailabas.alibaba.genie.alive"

    return-object v0
.end method

.method private declared-synchronized remove(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    .line 182
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 186
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 196
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "KeepAliveSvr"

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private retryCheck(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    .locals 8

    const-string v0, "keep alive success, remove info ="

    const-string v1, "KeepAliveSvr"

    if-nez p1, :cond_0

    const-string p1, "info is null"

    .line 72
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getRetryCount()I

    move-result v2

    .line 79
    :try_start_0
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no find, info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 86
    iget-object v4, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    move-object p1, v3

    :cond_2
    if-eqz p1, :cond_a

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getProcessName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alibaba/ailabs/ipc/utils/Utils;->hasProcessName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove, has process, info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/16 v4, 0xa

    if-le v2, v4, :cond_5

    .line 123
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove, retry count too many, info ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->launchTimes:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getType()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    .line 143
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v6, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_6
    if-ne v4, v3, :cond_7

    .line 147
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v6, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_7
    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/alibaba/ailabs/ipc/utils/Utils;->getBinderFromProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    const/4 v4, 0x1

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_9

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_4

    .line 162
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keep alive error, retry ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->setRetryCount(I)V

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v5, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 166
    invoke-static {v2}, Lcom/alibaba/ailabs/ipc/utils/Consts;->getRetryTimeout(I)J

    move-result-wide v1

    .line 165
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 90
    :cond_a
    :goto_2
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is binder alive, info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    const-string v3, ""

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_6

    :catch_0
    move-exception v2

    .line 156
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 159
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-void

    .line 159
    :goto_6
    iget-object v3, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    throw v2
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .locals 2

    monitor-enter p0

    .line 59
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 60
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->retryCheck(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5

    const-string v0, "pn"

    .line 242
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "prn"

    .line 243
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "a"

    .line 244
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "t"

    const/4 v4, -0x1

    .line 245
    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 246
    new-instance v4, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    invoke-direct {v4, v0, v1, v3, v2}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 248
    invoke-virtual {v4}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->isValid()Z

    move-result v0

    const-string v1, "KeepAliveSvr"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid info = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 254
    invoke-static {p2}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_1

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "binder is null, info = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 259
    :cond_1
    invoke-virtual {v4, p1}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->setBinder(Landroid/os/IBinder;)V

    .line 261
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->add(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 263
    invoke-direct {p0, v4}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->remove(Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V

    .line 268
    :goto_0
    invoke-static {v0}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public declared-synchronized onDied(ILjava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 274
    :try_start_0
    check-cast p2, Lcom/alibaba/ailabs/comm/alive/StartupInfo;

    const-string p1, "KeepAliveSvr"

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied, info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/comm/alive/StartupInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object p1, p0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr$1;-><init>(Lcom/alibaba/ailabs/comm/alive/KeepAliveSvr;Lcom/alibaba/ailabs/comm/alive/StartupInfo;)V

    new-instance p2, Ljava/util/Random;

    invoke-direct {p2}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    .line 284
    invoke-virtual {p2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long v1, p2

    .line 278
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
