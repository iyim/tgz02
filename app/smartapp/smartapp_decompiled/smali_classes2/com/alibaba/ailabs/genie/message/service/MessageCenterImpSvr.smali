.class public final Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "MessageCenterImpSvr.java"


# static fields
.field private static final METHOD_LIST_CACHED_MESSAGE:I = 0x1

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.messagecenter"

.field private static final TAG:Ljava/lang/String; = "MessageCenterImpSvr"

.field private static sInstance:Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;
    .locals 2

    .line 18
    sget-object v0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;->sInstance:Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    monitor-enter v0

    .line 20
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;->sInstance:Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;->sInstance:Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    .line 23
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 25
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;->sInstance:Lcom/alibaba/ailabs/genie/message/service/MessageCenterImpSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.messagecenter"

    return-object v0
.end method


# virtual methods
.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "list"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_0
    return-object p1
.end method
