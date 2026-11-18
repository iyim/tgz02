.class public Lcom/alibaba/ailabs/genie/data/GenieDataManager;
.super Ljava/lang/Object;
.source "GenieDataManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataCenterManager"

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/data/GenieDataManager;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/GenieDataManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->sInstance:Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->sInstance:Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->sInstance:Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 34
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->sInstance:Lcom/alibaba/ailabs/genie/data/GenieDataManager;

    return-object p0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " get key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataCenterManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getProductSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    .line 72
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getProductSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProductSetting key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " productSetting="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataCenterManager"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public registerListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->registerListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->set(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " set key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataCenterManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->set(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p2

    .line 58
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " after set key="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->get(Ljava/lang/String;)Ljava/lang/String;

    return p2
.end method

.method public unRegisterListener(Lcom/alibaba/ailabs/genie/data/GenieDataListener;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/data/GenieDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/data/DeviceMirrorManager;->unregisterListener(Landroid/content/Context;Lcom/alibaba/ailabs/genie/assistant/sdk/data/IDeviceMirrorChanger;)Z

    return-void
.end method
