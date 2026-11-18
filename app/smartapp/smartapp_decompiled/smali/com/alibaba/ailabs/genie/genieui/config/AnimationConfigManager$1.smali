.class Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;
.super Ljava/lang/Object;
.source "AnimationConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->loadConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "AnimationConfigManager"

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/ContextUtils;->get()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 56
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/genieui/utils/DeviceUtils;->isS4A02()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "genie_animation_s4a02_config.json"

    goto :goto_0

    :cond_0
    const-string v2, "genie_animation_config.json"

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 57
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAnimation start"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$000(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAnimation end"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$100(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAnimationEntry end"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->getKeepShowList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$202(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->getDisableWakeupTipsActivity()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$302(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfig;->getDisableWakeupTipsPackage()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$402(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;Ljava/util/List;)Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$500(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;)Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$1;->this$0:Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;->access$500(Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager;)Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/ailabs/genie/genieui/config/AnimationConfigManager$LoadListener;->onLoadComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method
