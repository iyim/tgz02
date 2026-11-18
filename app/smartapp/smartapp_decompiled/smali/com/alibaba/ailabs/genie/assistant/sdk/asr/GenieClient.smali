.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;
.super Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;
.source "GenieClient.java"


# static fields
.field private static final DOMAIN_GESTURE:Ljava/lang/String; = "AliGenie.Gesture.Recognition"

.field public static final GESTURE_RESULT:I = 0x0

.field public static final METHOD_ASR_HANDLE_COMMAND:I = 0x4

.field public static final METHOD_ASR_STATUS_UPDATE:I = 0x1

.field public static final METHOD_ASR_TO_CLIENT:I = 0x3

.field public static final METHOD_GET_APP_CONTEXT_DATA:I = 0x2

.field public static final METHOD_ULTRASONIC_CHANGED:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GenieClient"


# instance fields
.field private mClientKey:Ljava/lang/String;

.field private final mGestureKey:Ljava/lang/String;

.field private mGestureStarted:Z

.field private mTips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x1000

    .line 35
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureStarted:Z

    .line 42
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->onGesture(I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getClientKeyInner()Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getClientKey()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private onGesture(I)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mASRCommandListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_0
    const-string p1, "/Down"

    goto :goto_0

    :pswitch_1
    const-string p1, "/Good"

    goto :goto_0

    :pswitch_2
    const-string p1, "/Back"

    goto :goto_0

    :pswitch_3
    const-string p1, "/Pause"

    goto :goto_0

    :pswitch_4
    const-string p1, "/Play"

    goto :goto_0

    :pswitch_5
    const-string p1, "/Next"

    goto :goto_0

    :pswitch_6
    const-string p1, "/Previous"

    :goto_0
    const/4 v1, 0x0

    const-string v2, "AliGenie.Gesture.Recognition"

    const-string/jumbo v3, "{}"

    .line 127
    invoke-interface {v0, v2, p1, v3, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;->onNLUResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startGesture()V
    .locals 6

    .line 144
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v5

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mTips:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->start(Ljava/lang/String;ILjava/util/Map;Landroid/os/IBinder;Ljava/lang/String;)Z

    .line 148
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 149
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/alibaba/ailabs/ipc/Router;->registerServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;Z)V

    return-void
.end method


# virtual methods
.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mClientKey:Ljava/lang/String;

    return-object v0
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 48
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->onASRStatusUpdate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getAppContextData()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 53
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->asrToClient(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 55
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->handleASRCommand(Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->getReturnEx()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez p1, :cond_5

    .line 58
    invoke-static {p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getMainHandler()Landroid/os/Handler;

    move-result-object p2

    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    :cond_4
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getBundle(Z)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "com.alibaba.ailabs.genie.assistant.asr"

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;->onServerStatusChange(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    const-string p2, "com.alibaba.ailabs.genie.assistant.gestures"

    .line 77
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    iget-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureStarted:Z

    if-eqz p1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->startGesture()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->stopGesture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mClientKey:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized startGesture(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GenieClient"

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start gesture clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 155
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureStarted:Z

    .line 159
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mTips:Ljava/util/Map;

    .line 160
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    .line 161
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->startGesture()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startGesture(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "GenieClient"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start gesture clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",tips = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 170
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 173
    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureStarted:Z

    const/4 v0, 0x0

    .line 174
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    .line 175
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mTips:Ljava/util/Map;

    .line 176
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;->gestureMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 178
    sget-object v2, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;->gestureMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    iget v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mType:I

    .line 180
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mTips:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 183
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->startGesture()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized stopGesture()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "GenieClient"

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop gesture clientId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->getClientKeyInner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureStarted:Z

    .line 190
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mGestureKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->stop(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieClient;->mContext:Landroid/content/Context;

    const-string v1, "com.alibaba.ailabs.genie.assistant.server"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object v0

    .line 192
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/ailabs/ipc/Router;->unregisterServerConnection(Ljava/lang/String;Lcom/alibaba/ailabs/ipc/conn/ISvrConn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
