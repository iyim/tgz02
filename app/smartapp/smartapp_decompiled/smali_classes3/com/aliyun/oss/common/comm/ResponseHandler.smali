.class public interface abstract Lcom/aliyun/oss/common/comm/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# virtual methods
.method public abstract handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method
