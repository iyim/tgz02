.class public Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "GenieRouterClient.java"


# static fields
.field private static final ALIROUTER_CALL:I = 0x3e9

.field private static final ALIROUTER_EXITLOADING:I = 0x3ea

.field private static final ALIROUTER_OPEN:I = 0x3e8

.field public static final HOST:Ljava/lang/String; = "com.alibaba.ailabs.genie.router.ipc.service"

.field public static final SERVICE_NAME:Ljava/lang/String; = "genierouter.ipc.service"

.field private static final TAG:Ljava/lang/String; = "GenieAIRouter"

.field private static sInstance:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;
    .locals 2

    .line 57
    sget-object v0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->sInstance:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    if-nez v0, :cond_1

    .line 58
    const-class v0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->sInstance:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->sInstance:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    .line 62
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 64
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->sInstance:Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;

    return-object p0
.end method


# virtual methods
.method public exitLoadingWindows(J)V
    .locals 2

    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "token"

    .line 80
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/16 p1, 0x3ea

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public initConfig()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->getInstance()Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/router/receiver/AGUIOnlineReceiverManager;->registerBrocast(Landroid/content/Context;)V

    return-void
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.router.ipc.service"

    .line 70
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "genierouter.ipc.service"

    .line 71
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public open(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    const-string v1, "GenieAIRouter"

    if-eqz v0, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 134
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    :goto_0
    const-string v6, "genie"

    .line 146
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v6, "tHSM0JWysNYW"

    if-eqz v3, :cond_4

    const-string v3, "com.alibaba.genie.proxy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "/launch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/checkUtil/GenieAIRouterUtils;->isCloudAppUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string p2, "pkg"

    .line 147
    invoke-virtual {v0, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 148
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "router open proxy app; proxyPkg="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    move-object p4, p2

    goto :goto_1

    :cond_2
    const-string p4, "null"

    :goto_1
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->processProxyApk(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object p2

    iget-object p3, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p3, v6}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getRouterUploadOpenDataBlackList()Ljava/lang/String;

    move-result-object v2

    .line 156
    :cond_3
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->reportRecentUseInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v6}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 163
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->getRouterNoIpcUriList()Ljava/lang/String;

    move-result-object v2

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "|"

    .line 168
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "\\|"

    .line 169
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    array-length v4, v2

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_6

    aget-object v6, v2, v5

    .line 171
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 174
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open uri, routerNoIpcUriList="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 182
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x1

    .line 189
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open uri, canLocal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_3
    if-eqz v0, :cond_a

    .line 196
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->mContext:Landroid/content/Context;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    goto :goto_4

    .line 198
    :cond_a
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->openIpc(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    :goto_4
    return-void

    :cond_b
    :goto_5
    const-string p1, "open uri, error uri is null"

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public open(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    return-void
.end method

.method public open(Ljava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v2, -0x1

    const-string v3, ""

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 118
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;->open(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    return-void
.end method

.method public openIpc(Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open:uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " launchMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "null"

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " intentData= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient$1;-><init>(Lcom/alibaba/ailabs/genie/router/client/GenieRouterClient;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
