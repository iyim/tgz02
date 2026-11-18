.class public Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "DeviceMirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;
    }
.end annotation


# static fields
.field private static final METHOD_GET:I = 0x2

.field private static final METHOD_GET_PRODUCT:I = 0x3

.field private static final METHOD_REFRESH:I = 0x4

.field private static final METHOD_SET:I = 0x1

.field private static final NOTIFY:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.provider/deviceMirror"

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.deviceMirror"

.field private static final TAG:Ljava/lang/String; = "DeviceMirrorManager"

.field private static sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;


# instance fields
.field private mDeviceMirrorinfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;",
            "Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 62
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->mMainHandler:Landroid/os/Handler;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->mDeviceMirrorinfos:Ljava/util/HashMap;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;
    .locals 2

    .line 66
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    if-nez v0, :cond_1

    .line 67
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    .line 71
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 73
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->sDeviceMirrorManager:Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 154
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "v"

    .line 161
    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getProductSettings(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 134
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 136
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v1, "v"

    .line 139
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 78
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.deviceMirror"

    .line 80
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method

.method public refreshMirror()V
    .locals 2

    .line 171
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x4

    .line 172
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public registerListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z
    .locals 6

    .line 183
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p2}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager$DeviceMirrorObserver;-><init>(Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;Landroid/os/Handler;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)V

    .line 184
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->mDeviceMirrorinfos:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register observer id = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "DeviceMirrorManager"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 187
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "content://com.alibaba.ailabs.genie.assistant.provider/deviceMirror"

    .line 190
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register observer url = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p1, v3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->set(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->set(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 2

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "k"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "v"

    .line 113
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "n"

    .line 114
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "f"

    .line 115
    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 117
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public unregisterListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z
    .locals 3

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->mDeviceMirrorinfos:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/ContentObserver;

    const-string v0, "DeviceMirrorManager"

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener observer id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 206
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
