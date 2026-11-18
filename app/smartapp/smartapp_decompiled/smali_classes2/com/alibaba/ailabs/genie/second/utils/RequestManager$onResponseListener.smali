.class public interface abstract Lcom/alibaba/ailabs/genie/second/utils/RequestManager$onResponseListener;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/utils/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "onResponseListener"
.end annotation


# virtual methods
.method public abstract onResponseFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onResponseSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;",
            ">;)V"
        }
    .end annotation
.end method
