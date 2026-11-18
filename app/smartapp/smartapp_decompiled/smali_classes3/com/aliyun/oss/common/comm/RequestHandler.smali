.class public interface abstract Lcom/aliyun/oss/common/comm/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# virtual methods
.method public abstract handle(Lcom/aliyun/oss/common/comm/RequestMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method
