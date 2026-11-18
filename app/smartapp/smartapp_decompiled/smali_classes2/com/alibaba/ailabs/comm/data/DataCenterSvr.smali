.class public Lcom/alibaba/ailabs/comm/data/DataCenterSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "DataCenterSvr.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final METHOD_GET:I = 0x2

.field private static final METHOD_ON_CHANGE:I = 0x3

.field private static final METHOD_SET:I = 0x1

.field private static final NOTIFY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider/datacenter"

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.datacenter"

.field private static final TAG:Ljava/lang/String; = "DataCenterSvr"

.field private static sInstance:Lcom/alibaba/ailabs/comm/data/DataCenterSvr;


# instance fields
.field private final mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    .line 62
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getAttrTable()Lcom/alibaba/ailabs/comm/data/AttrTable;

    move-result-object v0

    .line 76
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/comm/data/AttrTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    monitor-enter v1

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v1

    return-object p1

    .line 82
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 74
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private getAttrTable()Lcom/alibaba/ailabs/comm/data/AttrTable;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/ailabs/comm/data/AttrTable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/comm/data/DbMgr;->getTable(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/comm/data/AttrTable;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/data/DataCenterSvr;
    .locals 2

    .line 143
    sget-object v0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->sInstance:Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    if-nez v0, :cond_1

    .line 144
    const-class v0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    monitor-enter v0

    .line 145
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->sInstance:Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->sInstance:Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    .line 148
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 150
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->sInstance:Lcom/alibaba/ailabs/comm/data/DataCenterSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.datacenter"

    return-object v0
.end method

.method private set(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getAttrTable()Lcom/alibaba/ailabs/comm/data/AttrTable;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/ailabs/comm/data/AttrTable;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/datacenter/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "DataCenterSvr"

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "k"

    .line 101
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "DataCenterSvr"

    if-eqz v1, :cond_0

    const-string p1, "key is null"

    .line 103
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCommu method = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",key = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const-string v4, "v"

    if-ne p1, v1, :cond_1

    .line 110
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 113
    invoke-virtual {p2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 118
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const-string v4, "n"

    .line 119
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 124
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->set(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    .line 128
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 130
    iget-object v2, p0, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v5, v1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v5, 0xa

    invoke-virtual {v2, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 134
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isNotify = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", ret= "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-static {v4}, Lcom/alibaba/ailabs/comm/data/DataCenterSvr;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v2
.end method
