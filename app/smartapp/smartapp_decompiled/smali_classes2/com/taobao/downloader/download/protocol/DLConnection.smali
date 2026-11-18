.class public interface abstract Lcom/taobao/downloader/download/protocol/DLConnection;
.super Ljava/lang/Object;
.source "DLConnection.java"


# virtual methods
.method public abstract addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disConnect()V
.end method

.method public abstract getDownloadLength()J
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getHeaderField(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getInputStream()Lcom/taobao/downloader/download/protocol/DLInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getStatusCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract openConnection(Ljava/net/URL;Lcom/taobao/downloader/download/protocol/DLConfig;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
