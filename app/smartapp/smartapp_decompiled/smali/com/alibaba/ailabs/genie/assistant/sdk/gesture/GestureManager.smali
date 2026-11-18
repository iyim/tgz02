.class public Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "GestureManager.java"


# static fields
.field private static final GESTURE_STATE_KEY:Ljava/lang/String; = "isopen"

.field private static final GESTURE_URI:Ljava/lang/String; = "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

.field private static final METHOD_GESTURE_START:I = 0x0

.field private static final METHOD_GESTURE_STOP:I = 0x1

.field public static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.gestures"

.field private static sGestureManager:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getGestureAvailable(Landroid/content/Context;)I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string v2, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    .line 151
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 154
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "isopen"

    .line 156
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v1, p0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    .line 160
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 162
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return v1

    :catchall_1
    move-exception p0

    .line 162
    :goto_2
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    invoke-static {v2}, Lcom/alibaba/ailabs/genie/assistant/sdk/util/ContentProviderUtils;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;
    .locals 2

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->sGestureManager:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    if-nez v0, :cond_1

    .line 30
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->sGestureManager:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    if-nez v1, :cond_0

    .line 32
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->sGestureManager:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 36
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->sGestureManager:Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.gestures"

    return-object v0
.end method

.method private start(Lorg/json/JSONObject;Landroid/os/IBinder;)Z
    .locals 1

    .line 55
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 57
    invoke-static {v0, p1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p2

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 62
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start inner info = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GestureClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 49
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.gestures"

    .line 51
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public start(Ljava/lang/String;ILjava/util/Map;Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "t"

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    :try_start_0
    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "c"

    .line 93
    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p5, :cond_0

    const-string p1, "id"

    .line 96
    invoke-virtual {v1, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p3, :cond_2

    .line 99
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    .line 101
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "d"

    if-eqz p5, :cond_1

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Integer;

    .line 102
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 104
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    invoke-interface {p3, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v3, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    :cond_2
    invoke-direct {p0, v1, p4}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->start(Lorg/json/JSONObject;Landroid/os/IBinder;)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public stop(Ljava/lang/String;)Z
    .locals 3

    .line 128
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 130
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/GestureManager;->callAsynMethod(ILandroid/os/Bundle;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop inner info = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
