.class Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;
.super Ljava/lang/Object;
.source "ConfigUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->maybeInit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;Landroid/content/Context;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;->this$0:Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 61
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;->val$context:Landroid/content/Context;

    const-string/jumbo v2, "tHSM0JWysNYW"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getOrangeConfig(Landroid/content/Context;Ljava/lang/String;)Lcom/alibaba/ailabs/genie/router/bean/RouterBean;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    .line 62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeInit getOrangeConfig; key=tHSM0JWysNYW, routerBean="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/bean/RouterBean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getInstance()Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/router/config/ConfigUtils;->getLocalFile(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
