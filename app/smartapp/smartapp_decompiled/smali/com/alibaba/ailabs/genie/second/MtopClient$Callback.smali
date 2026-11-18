.class public interface abstract Lcom/alibaba/ailabs/genie/second/MtopClient$Callback;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;)V"
        }
    .end annotation
.end method
