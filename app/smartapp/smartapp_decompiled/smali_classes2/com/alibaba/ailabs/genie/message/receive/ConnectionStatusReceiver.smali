.class public Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionStatusReceiver.java"


# static fields
.field public static final ONLINE_ACTION:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.ONLINE"

.field public static final ONLINE_STATUS_KEY:Ljava/lang/String; = "gw_online_status"

.field public static final TAG:Ljava/lang/String; = "ONLINE_ACTION"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private listUnreadMessages(Landroid/content/Context;)V
    .locals 3

    .line 50
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver$1;-><init>(Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver;)V

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-interface {p1, v1, v2, v0}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->listUnreadMessages(IILcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method


# virtual methods
.method public getCountUnread(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getNetworkService()Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver$2;-><init>(Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/IMessageNetworkService;->getCountUnread(Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/message/MessageCenterImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/MessageCenterImp;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.ailabs.genie.assistant.ONLINE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const-string v1, "gw_online_status"

    .line 37
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    .line 40
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/message/network/cache/MessageCache;->updateCacheMessage(Landroid/content/Context;Lcom/alibaba/ailabs/genie/message/network/IMessageCallback;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver;->listUnreadMessages(Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/message/receive/ConnectionStatusReceiver;->getCountUnread(Landroid/content/Context;)V

    :cond_2
    return-void
.end method
