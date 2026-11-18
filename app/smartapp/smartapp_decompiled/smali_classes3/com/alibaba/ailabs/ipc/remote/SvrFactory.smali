.class public Lcom/alibaba/ailabs/ipc/remote/SvrFactory;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "SvrFactory.java"


# static fields
.field private static final mSvr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/ipc/remote/SvrFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHost:Ljava/lang/String;

.field private mServerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mSvr:Ljava/util/List;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p2, p0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mHost:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mServerName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/remote/SvrFactory;
    .locals 4

    .line 19
    const-class v0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mSvr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    .line 21
    iget-object v3, v2, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mHost:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mServerName:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 22
    monitor-exit v0

    return-object v2

    .line 26
    :cond_1
    new-instance v1, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object p0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mSvr:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p0

    :goto_1
    goto :goto_0
.end method


# virtual methods
.method protected onGetCommu(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mHost:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/ipc/Router;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/SvrFactory;->mServerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/ipc/Router;->getServer(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    return-object p1
.end method
