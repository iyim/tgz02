.class public interface abstract Lcom/alibaba/ailabs/genie/adv/utils/HttpGetBytesCallback;
.super Ljava/lang/Object;
.source "HttpGetBytesCallback.java"


# virtual methods
.method public abstract onFailure(Ljava/io/IOException;)V
    .param p1    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResponse(Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/genie/adv/repository/HttpResponse<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
