.class Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;
.super Ljava/lang/Object;
.source "ConfigUtils.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi$OrangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;->this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "tHSM0JWysNYW"

    .line 128
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "GenieAIRouter"

    const-string v1, "getOrangeConfig; server has update"

    .line 129
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/GenieAIRouterApplicaction;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/GenieApi;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOrangeConfig; server has update, orangeConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "null"

    if-eqz v0, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;->this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    const-class v3, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->access$002(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;Lcom/alibaba/ailabs/genie/router/bean/RouterBean;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOrangeConfig; server has update, parseObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;->this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->access$000(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$2;->this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->access$000(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
