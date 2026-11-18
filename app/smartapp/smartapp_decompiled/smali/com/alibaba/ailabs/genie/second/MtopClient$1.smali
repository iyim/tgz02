.class Lcom/alibaba/ailabs/genie/second/MtopClient$1;
.super Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient;->send()Lmtopsdk/mtop/common/ApiID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/MtopClient;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/MtopClient;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$1;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/gcs/service/GCSBaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$1;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->access$400(Lcom/alibaba/ailabs/genie/second/MtopClient;Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mtop"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSucceed(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 108
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string v1, "mtopStat"

    .line 109
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v1, Lmtopsdk/mtop/common/MtopFinishEvent;

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {p1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 117
    new-instance v1, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v1, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    throw p1

    :catch_0
    new-instance v1, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v1, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 121
    :goto_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$1;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient;

    invoke-static {p1, v1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->access$100(Lcom/alibaba/ailabs/genie/second/MtopClient;Lmtopsdk/mtop/common/MtopFinishEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/second/MtopClient$1;->this$0:Lcom/alibaba/ailabs/genie/second/MtopClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient;->access$200(Lcom/alibaba/ailabs/genie/second/MtopClient;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;->access$300(Lcom/alibaba/ailabs/genie/second/MtopClient$Builder;)Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/second/MtopClient$Builder$MtopFinishListenerWrapper;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    return-void
.end method
