.class public Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "GenieRouterService.java"


# static fields
.field private static final ALIROUTER_CALL:I = 0x3e9

.field private static final ALIROUTER_EXITLOADING:I = 0x3ea

.field private static final ALIROUTER_OPEN:I = 0x3e8

.field public static final ROUTER_EVENT_CALLBACK_METHOD:I = 0x7531

.field public static final SERVICE_NAME:Ljava/lang/String; = "genierouter.ipc.service"

.field private static final TAG:Ljava/lang/String; = "GenieAIRouter"

.field private static sInstance:Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;


# instance fields
.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;
    .locals 2

    .line 47
    sget-object v0, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->sInstance:Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    if-nez v0, :cond_1

    .line 48
    const-class v0, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->sInstance:Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->sInstance:Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    .line 52
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->sInstance:Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;

    return-object p0
.end method

.method private getMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 177
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 182
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 183
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 186
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "genierouter.ipc.service"

    return-object v0
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "pic_url"

    const-string v3, "content"

    const-string v4, "name"

    const-string v5, "GenieAIRouter"

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v3, v2

    goto/16 :goto_8

    :pswitch_0
    if-eqz v2, :cond_0

    :try_start_0
    const-string/jumbo v0, "token"

    const-wide/16 v3, 0x0

    .line 64
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive ipc message, remove LoadingWindow; token="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->exitWindows(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v2

    goto/16 :goto_7

    :pswitch_1
    if-eqz v2, :cond_6

    :try_start_1
    const-string/jumbo v5, "router_intent"

    .line 86
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const-string/jumbo v6, "router_flag"

    const/4 v7, 0x0

    .line 87
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 88
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v8, "APP"

    .line 89
    :goto_1
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-eqz v10, :cond_2

    :try_start_4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :cond_2
    :try_start_5
    const-string/jumbo v10, "\u5929\u732b\u7cbe\u7075\u6b63\u5728\u4e3a\u60a8\u6253\u5f00\u4e2d"

    :goto_2
    const-string/jumbo v11, "router_binder"

    .line 91
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 92
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    const-string v14, "code"

    const-string/jumbo v15, "\u8df3\u8f6c\u6210\u529f"

    const-string v13, "message"

    if-eqz v12, :cond_4

    if-eqz v5, :cond_0

    if-nez v6, :cond_3

    .line 95
    :try_start_6
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 98
    :cond_3
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_3
    if-eqz v11, :cond_0

    .line 101
    invoke-static {v11}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v0, :cond_0

    .line 104
    :try_start_7
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 105
    invoke-virtual {v3, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3, v14, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v4, 0x7531

    .line 107
    invoke-interface {v0, v4, v3}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 110
    :try_start_8
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 117
    :cond_4
    :try_start_9
    new-instance v12, Landroid/content/Intent;

    iget-object v7, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    const-class v2, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    invoke-direct {v12, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    invoke-virtual {v12, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    invoke-virtual {v12, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {v12, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    if-eqz v5, :cond_6

    if-nez v6, :cond_5

    .line 125
    :try_start_a
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 128
    :cond_5
    iget-object v0, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_4
    if-eqz v11, :cond_6

    .line 131
    invoke-static {v11}, Lcom/alibaba/ailabs/ipc/ICommu$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/ipc/ICommu;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-eqz v0, :cond_6

    .line 134
    :try_start_b
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-virtual {v2, v13, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 136
    invoke-virtual {v2, v14, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x7531

    .line 137
    invoke-interface {v0, v3, v2}, Lcom/alibaba/ailabs/ipc/ICommu;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_5

    :catch_2
    move-exception v0

    .line 140
    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 147
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    const-class v0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    const-class v0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_6

    const-class v0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    .line 150
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/router/view/ActivityCollector;->getActivity(Ljava/lang/Class;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 151
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/ActivityCollector;->removeAllActivity()V

    :cond_6
    :goto_5
    move-object/from16 v3, p2

    goto/16 :goto_8

    .line 70
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiver message open:data= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    const-string v2, "null"

    move-object/from16 v3, p2

    if-eqz v3, :cond_7

    :try_start_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_7

    :cond_7
    move-object v4, v2

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "router_uri"

    .line 71
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "router_lunchMode"

    .line 72
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "router_packageName"

    .line 73
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "data"

    .line 74
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;

    if-nez v0, :cond_9

    const-string/jumbo v0, "router_configData"

    .line 76
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "old version by router_configData= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v2, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->getMapFromBundle(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;-><init>(Ljava/util/HashMap;)V

    move-object v0, v2

    :cond_9
    const-string/jumbo v2, "router_intentData"

    .line 80
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/os/Bundle;

    .line 81
    iget-object v6, v1, Lcom/alibaba/ailabs/genie/router/service/GenieRouterService;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/utils/RouterMap;->getMap()Ljava/util/HashMap;

    move-result-object v10

    invoke-static/range {v6 .. v11}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v3, p2

    .line 163
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    :goto_8
    invoke-super/range {p0 .. p2}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;->onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
