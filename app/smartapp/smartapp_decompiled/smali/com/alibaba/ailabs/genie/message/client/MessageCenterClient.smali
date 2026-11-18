.class public Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;
.super Ljava/lang/Object;
.source "MessageCenterClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MessageCenterClient"

.field private static volatile sInstance:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->mContext:Landroid/content/Context;

    return-void
.end method

.method private bindService(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;Lcom/alibaba/ailabs/genie/message/client/CallBack;)V
    .locals 2

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.smartapp"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.messagecenter.ACTION_NOTIFY"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    new-instance v1, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient$1;-><init>(Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;Lcom/alibaba/ailabs/genie/message/client/CallBack;Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;)V

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->mContext:Landroid/content/Context;

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;
    .locals 2

    .line 31
    sget-object v0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->sInstance:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->sInstance:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->sInstance:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    .line 36
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 38
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->sInstance:Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;Lcom/alibaba/ailabs/genie/message/client/CallBack;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/message/client/MessageCenterClient;->bindService(Lcom/alibaba/ailabs/genie/message/ipc/IMessageListener;Lcom/alibaba/ailabs/genie/message/client/CallBack;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
