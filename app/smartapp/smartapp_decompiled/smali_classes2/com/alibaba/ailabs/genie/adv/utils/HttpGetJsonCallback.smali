.class public interface abstract Lcom/alibaba/ailabs/genie/adv/utils/HttpGetJsonCallback;
.super Ljava/lang/Object;
.source "HttpGetJsonCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Ljava/io/IOException;)V
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Tresponse;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
