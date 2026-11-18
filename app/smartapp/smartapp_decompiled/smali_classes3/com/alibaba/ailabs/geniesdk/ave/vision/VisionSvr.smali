.class public Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "VisionSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.vision"

.field private static final TAG:Ljava/lang/String; = "VisionSvr"

.field private static final VISION_CENTER:I = 0x3

.field public static final VISION_CONNECT:I = 0x0

.field private static final VISION_DIED:I = 0x3e8

.field private static final VISION_MODE:I = 0x4

.field private static final VISION_START:I = 0x1

.field private static final VISION_STOP:I = 0x2

.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;


# instance fields
.field private final mClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/alibaba/ailabs/ipc/Router;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;
    .locals 2

    .line 53
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.vision"

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 8

    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    const-string v3, "VisionSvr"

    if-eq v0, v2, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    const/4 v4, 0x3

    const-string v5, "find ="

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 132
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    .line 133
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    if-ne v1, p1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove has die clientId = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->stop()V

    .line 142
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->unlinkToDeath()V

    goto/16 :goto_1

    .line 121
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 122
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 123
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    if-eqz v4, :cond_3

    .line 125
    invoke-virtual {v4, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->setMode(I)V

    .line 127
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vision set mode,  clientId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mode="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 108
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 109
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    if-eqz v4, :cond_7

    .line 113
    invoke-virtual {v4, p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->setHasCenter(Z)V

    .line 116
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vision set c bit,  clientId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isCenter="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 96
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->stop()V

    .line 101
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->unlinkToDeath()V

    .line 103
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision stop,  clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 75
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    if-eqz v1, :cond_c

    .line 81
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->stop()V

    .line 82
    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->unlinkToDeath()V

    .line 85
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 86
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mClients:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->linkToDeath()V

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->start()V

    .line 91
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start vision info = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    :cond_e
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_f

    const/4 v1, 0x1

    .line 68
    :cond_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    .line 70
    invoke-virtual {p1, v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->notifyConnectStatus(Z)V

    :goto_1
    return v2
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15

    move-object v7, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 161
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "e"

    .line 165
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v3

    .line 170
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, "VisionSvr"

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", vision clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const-string v0, "m"

    const-string v6, "d"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v1, v9, :cond_7

    const-string v1, "b"

    .line 177
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    .line 178
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    const-string v6, ",clientId = "

    if-eqz v11, :cond_6

    .line 180
    invoke-interface {v11}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v12

    if-nez v12, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v1, :cond_5

    .line 185
    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v12

    if-nez v12, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v6, -0x1

    const-string v12, "w"

    .line 189
    invoke-virtual {v2, v12, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "h"

    .line 190
    invoke-virtual {v2, v13, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v13, "c"

    .line 191
    invoke-virtual {v2, v13, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 192
    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    :try_start_1
    const-string v0, "ck"

    .line 196
    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v3

    :goto_1
    if-lez v12, :cond_4

    if-gtz v6, :cond_3

    goto :goto_2

    .line 206
    :cond_3
    new-instance v3, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    invoke-direct {v3}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;-><init>()V

    .line 208
    invoke-virtual {v3, v13}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setCenter(Z)V

    .line 209
    invoke-virtual {v3, v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setSurface(Landroid/view/Surface;)V

    .line 210
    invoke-virtual {v3, v12}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setWidth(I)V

    .line 211
    invoke-virtual {v3, v6}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setHeight(I)V

    .line 212
    invoke-virtual {v3, v4}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setClientId(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3, v14}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setMode(I)V

    .line 214
    invoke-virtual {v3, v0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->setClientKey(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v7, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    move-object v1, v0

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;-><init>(Landroid/content/Context;Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;Landroid/os/Handler;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 217
    iget-object v1, v7, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 202
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 186
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vision client surface is null,  = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 181
    :cond_6
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vision client binder is null or alive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_7
    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    .line 220
    iget-object v0, v7, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_8
    const/4 v3, 0x3

    if-ne v1, v3, :cond_9

    .line 222
    invoke-virtual {v2, v6, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 226
    iget-object v1, v7, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v0, v10, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_9
    const/4 v3, 0x4

    if-ne v1, v3, :cond_a

    .line 228
    invoke-virtual {v2, v0, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 230
    iget-object v1, v7, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3, v0, v10, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    :goto_5
    const/4 v9, 0x0

    :goto_6
    const-string v0, "r"

    .line 234
    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v8
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    .line 152
    check-cast p1, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDied  clientInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionClient;->getVisionInfo()Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionSvr"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/vision/VisionSvr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
