.class public Lcom/alibaba/ailabs/genie/message/MessageCenterImp;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "MessageCenterImp.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/IMessageCenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;
    }
.end annotation


# static fields
.field private static final METHOD_LIST_CACHED_MESSAGE:I = 0x1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.messagecenter"

.field private static final TAG:Ljava/lang/String; = "MessageCenterImp"

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/message/MessageCenterImp;


# instance fields
.field private mEnable:Z

.field private mMessageHandler:Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;

.field private volatile mMessageNetworkService:Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mEnable:Z

    .line 36
    new-instance p1, Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;-><init>(Lcom/alibaba/ailabs/genie/message/MessageCenterImp$1;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mMessageHandler:Lcom/alibaba/ailabs/genie/message/MessageCenterImp$MessageHandler;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;
    .locals 2

    .line 40
    sget-object v0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->sInstance:Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    if-nez v0, :cond_1

    .line 41
    const-class v0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->sInstance:Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->sInstance:Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    .line 45
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 47
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->sInstance:Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    return-object p0
.end method


# virtual methods
.method public enable(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mEnable:Z

    return-void
.end method

.method public getCachedMessage()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 72
    invoke-static {v0, v0, v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Landroid/os/Parcelable;Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->callMethod(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "list"

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listAllMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MessageCenterImp"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mMessageNetworkService:Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    if-nez v0, :cond_1

    .line 61
    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mMessageNetworkService:Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/MessageNetworkServiceImp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mMessageNetworkService:Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    .line 65
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 67
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mMessageNetworkService:Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->mEnable:Z

    return v0
.end method

.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.server"

    .line 82
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    const-string v0, "com.alibaba.ailabs.genie.assistant.messagecenter"

    .line 83
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
