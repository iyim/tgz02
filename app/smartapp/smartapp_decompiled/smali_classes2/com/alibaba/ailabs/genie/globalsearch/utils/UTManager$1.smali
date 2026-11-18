.class final Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;
.super Ljava/lang/Object;
.source "UTManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->sendUTEvent(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/lang/String;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventId:I

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;Ljava/util/Map;ILjava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$props:Ljava/util/Map;

    iput p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$eventId:I

    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$eventName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    invoke-static {}, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "source_app_key"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spm-cnt"

    .line 72
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageSpm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$props:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 79
    :cond_1
    new-instance v1, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    invoke-direct {v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;-><init>()V

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$pageState:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 80
    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->getPageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v1

    const-string v2, "customEventId"

    .line 81
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$eventId:I

    .line 82
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventId(I)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/UTManager$1;->val$eventName:Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {v1, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    move-result-object v0

    .line 87
    const-class v1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    invoke-static {v1}, Lcom/alibaba/genie/waft/gcs/rpc/GenieServiceLoader;->load(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;

    .line 89
    :try_start_0
    invoke-interface {v1, v0}, Lcom/alibaba/genie/waft/gcs/ut/api/IUt;->sendUt(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
