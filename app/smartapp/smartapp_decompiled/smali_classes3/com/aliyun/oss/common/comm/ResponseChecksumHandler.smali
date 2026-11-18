.class public Lcom/aliyun/oss/common/comm/ResponseChecksumHandler;
.super Ljava/lang/Object;
.source "ResponseChecksumHandler.java"

# interfaces
.implements Lcom/aliyun/oss/common/comm/ResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handle(Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v1, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-direct {v1}, Lcom/aliyun/oss/common/utils/CRC64;-><init>()V

    .line 39
    new-instance v2, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v2, v0, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 40
    invoke-virtual {p1, v2}, Lcom/aliyun/oss/common/comm/ResponseMessage;->setContent(Ljava/io/InputStream;)V

    return-void
.end method
