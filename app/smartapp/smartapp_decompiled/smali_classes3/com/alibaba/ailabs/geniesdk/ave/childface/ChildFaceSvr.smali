.class public Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "ChildFaceSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.childface"

.field private static final TAG:Ljava/lang/String; = "ChildFaceSvr"

.field private static final VISION_CHILD_FACE:I = 0x3

.field public static final VISION_CONNECT:I = 0x0

.field private static final VISION_DIED:I = 0x3e8

.field private static final VISION_START:I = 0x1

.field private static final VISION_STOP:I = 0x2

.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;


# instance fields
.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    .line 43
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;
    .locals 2

    .line 51
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    if-nez v0, :cond_1

    .line 52
    const-class v0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    .line 56
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 58
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.childface"

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 63
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const-string v3, "ChildFaceSvr"

    if-eq v0, v2, :cond_8

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 119
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    .line 120
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    if-ne v1, p1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove has die clientId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->stop()V

    .line 129
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->unlinkToDeath()V

    goto/16 :goto_1

    .line 106
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 107
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 108
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    if-eqz v4, :cond_4

    .line 111
    invoke-virtual {v4, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->setChildFace(Z)V

    .line 114
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vision set child face bit,  clientId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "find ="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isChildFace="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 94
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    if-eqz v0, :cond_7

    .line 98
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->stop()V

    .line 99
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->unlinkToDeath()V

    .line 101
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision stop,  clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    if-eqz v1, :cond_9

    .line 79
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->stop()V

    .line 80
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->unlinkToDeath()V

    .line 83
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 84
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->linkToDeath()V

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->start()V

    .line 89
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start vision info = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 65
    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    .line 66
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    .line 68
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->notifyConnectStatus(Z)V

    :goto_1
    return v2
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    .line 148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "e"

    .line 152
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v1

    .line 157
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "ChildFaceSvr"

    if-eqz v3, :cond_0

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", vision clientId = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    const-string v3, "d"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, v5, :cond_5

    const-string p1, "b"

    .line 164
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 165
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    const-string v3, ",clientId = "

    if-eqz v11, :cond_4

    .line 167
    invoke-interface {v11}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v7

    if-nez v7, :cond_3

    .line 173
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "vision client surface is null,  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v3, "c"

    .line 175
    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    :try_start_1
    const-string v4, "ck"

    .line 179
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 181
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    :goto_1
    new-instance v9, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    invoke-direct {v9}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;-><init>()V

    .line 186
    invoke-virtual {v9, v3}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->setChildFace(Z)V

    .line 187
    invoke-virtual {v9, p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->setSurface(Landroid/view/Surface;)V

    .line 188
    invoke-virtual {v9, v2}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->setClientId(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->setClientKey(Ljava/lang/String;)V

    .line 191
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    move-object v7, p1

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;Landroid/os/Handler;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 192
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 168
    :cond_4
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "vision client binder is null or alive = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 195
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p1, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_6
    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    .line 197
    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 201
    iget-object p2, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    invoke-static {p2, v1, p1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v5, 0x0

    :goto_4
    const-string p1, "r"

    .line 204
    invoke-virtual {v0, p1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    .line 139
    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied  clientInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChildFaceSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/childface/ChildFaceSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
