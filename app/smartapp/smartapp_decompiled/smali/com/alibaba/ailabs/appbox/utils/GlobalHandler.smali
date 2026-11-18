.class public Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;
.super Landroid/os/Handler;
.source "GlobalHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;,
        Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$Holder;
    }
.end annotation


# instance fields
.field private Tag:Ljava/lang/String;

.field private listener:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "GlobalHandler"

    .line 15
    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->Tag:Ljava/lang/String;

    .line 19
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->Tag:Ljava/lang/String;

    const-string v1, "GlobalHandler\u521b\u5efa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;
    .locals 1

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$Holder;->access$100()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHandleMsgListener()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->listener:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->getHandleMsgListener()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->getHandleMsgListener()Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;->handleMsg(Landroid/os/Message;)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->Tag:Ljava/lang/String;

    const-string/jumbo v0, "\u8bf7\u4f20\u5165HandleMsgListener\u5bf9\u8c61"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setHandleMsgListener(Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/utils/GlobalHandler;->listener:Lcom/alibaba/ailabs/appbox/utils/GlobalHandler$HandleMsgListener;

    return-void
.end method
