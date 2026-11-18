.class public Lcom/alibaba/ailabs/genie/message/utils/JumpUtils;
.super Ljava/lang/Object;
.source "JumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static gotoAction(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "http"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genie://com.alibaba.ailabs.genie.launcher/webviewPage?h5_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 75
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/message/utils/JumpUtils;->setInformJump(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static setInformJump(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;-><init>()V

    const-string v1, "pkg"

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setPkg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "appid"

    .line 33
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.alibaba.ailabs.genie.webapps"

    .line 35
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setPkg(Ljava/lang/String;)V

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/message/network/bean/DestUrlBean;->setUri(Ljava/lang/String;)V

    .line 45
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "message_center_dest"

    .line 47
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "message_center"

    .line 48
    invoke-static {p0, v2, p1, v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->informJump(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 49
    sget-object p0, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->MESSAGE_LIST_CLICK:Ljava/lang/String;

    sget-object p1, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->PAGE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->SPM:Ljava/lang/String;

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
