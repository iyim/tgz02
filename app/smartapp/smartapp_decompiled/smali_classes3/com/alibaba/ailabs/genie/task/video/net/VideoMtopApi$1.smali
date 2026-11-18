.class final Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$1;
.super Ljava/lang/Object;
.source "VideoMtopApi.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/agis/IResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->getRecommend(Ljava/lang/String;Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$1;->val$callback:Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseCallback(IILjava/lang/String;)V
    .locals 1

    :try_start_0
    const-string p1, "VideoMtopApi"

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponseCallback: result---->"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->access$000(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 33
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$1;->val$callback:Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;

    invoke-static {}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi;->access$100()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Lcom/alibaba/ailabs/genie/task/video/net/VideoMtopApi$OnVideoResult;->onVideoResult(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
