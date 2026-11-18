.class final Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi$1;
.super Ljava/lang/Object;
.source "MtopApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->syncSetting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 27
    invoke-static {}, Lcom/alibaba/ailabs/genie/utils/NetworkUtils;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.aicare.sync.time"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/task/aicare/AiCareStore;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alibaba/ailabs/genie/task/aicare/net/MtopApi;->getAiCareSettings()V

    :cond_0
    return-void
.end method
