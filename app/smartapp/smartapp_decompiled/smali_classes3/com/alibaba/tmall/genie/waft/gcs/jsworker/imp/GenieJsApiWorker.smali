.class public Lcom/alibaba/tmall/genie/waft/gcs/jsworker/imp/GenieJsApiWorker;
.super Ljava/lang/Object;
.source "GenieJsApiWorker.java"

# interfaces
.implements Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/IGenieJsApiWorker;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GenieJsApiWorker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public sendAsync(Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/GenieJsApiWorkerCallback;)V
    .locals 2
    .param p1    # Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/taobao/aranger/exception/IPCException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAsync() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieJsApiWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    iget-object v0, p1, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;->mMethodName:Ljava/lang/String;

    const-string v1, "testJsapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object p1, p1, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;->mAppInfo:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "{\"message\":\"run testJsapi\"}"

    invoke-interface {p2, p1, v0, v1}, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/GenieJsApiWorkerCallback;->success(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p1, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/JsApiRequest;->mAppInfo:Ljava/lang/String;

    const/16 v0, 0x194

    const-string v1, "{\"message\", \"404\"}"

    invoke-interface {p2, p1, v0, v1}, Lcom/alibaba/tmall/genie/waft/gcs/jsworker/api/GenieJsApiWorkerCallback;->success(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
