.class Lcom/taobao/zcache/network/ANetwork$StreamWrapper;
.super Ljava/io/InputStream;
.source "ANetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/zcache/network/ANetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StreamWrapper"
.end annotation


# instance fields
.field private final stream:Lanetwork/channel/aidl/ParcelableInputStream;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableInputStream;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableInputStream;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-interface {v0}, Lanetwork/channel/aidl/ParcelableInputStream;->readByte()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-interface {v0, p1}, Lanetwork/channel/aidl/ParcelableInputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 126
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    invoke-interface {v0, p1, p2, p3}, Lanetwork/channel/aidl/ParcelableInputStream;->readBytes([BII)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 135
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/taobao/zcache/network/ANetwork$StreamWrapper;->stream:Lanetwork/channel/aidl/ParcelableInputStream;

    long-to-int p2, p1

    invoke-interface {v0, p2}, Lanetwork/channel/aidl/ParcelableInputStream;->skip(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
