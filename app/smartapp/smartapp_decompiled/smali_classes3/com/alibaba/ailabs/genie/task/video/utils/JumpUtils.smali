.class public Lcom/alibaba/ailabs/genie/task/video/utils/JumpUtils;
.super Ljava/lang/Object;
.source "JumpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static gotoActionUseRoute(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 55
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 56
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/task/video/utils/JumpUtils;->setInformJump(Landroid/content/Context;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static setInformJump(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;-><init>()V

    const-string v1, "pkg"

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->setPkg(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "appid"

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "com.alibaba.ailabs.genie.webapps"

    .line 32
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->setPkg(Ljava/lang/String;)V

    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/task/video/utils/DestUrlBean;->setUri(Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "message_center_dest"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "recommend_windows"

    .line 44
    invoke-static {p0, v2, p1, v0, v1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->informJump(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method
