.class public interface abstract Lcom/alibaba/ailabs/genie/second/MtopClient$RawCallback;
.super Ljava/lang/Object;
.source "MtopClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/MtopClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RawCallback"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;)V
.end method
