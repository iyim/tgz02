.class public interface abstract Lcom/aliyun/oss/common/parser/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract parse(Lcom/aliyun/oss/common/comm/ResponseMessage;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/common/comm/ResponseMessage;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation
.end method
