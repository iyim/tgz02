.class public Lcom/aliyun/oss/model/UdfApplicationLog;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UdfApplicationLog.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private logContent:Ljava/io/InputStream;

.field private udfName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->udfName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->udfName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->logContent:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->logContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public forcedClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->response:Lcom/aliyun/oss/common/comm/ResponseMessage;

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->abort()V

    return-void
.end method

.method public getLogContent()Ljava/io/InputStream;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->logContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getUdfName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->udfName:Ljava/lang/String;

    return-object v0
.end method

.method public setLogContent(Ljava/io/InputStream;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->logContent:Ljava/io/InputStream;

    return-void
.end method

.method public setUdfName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/aliyun/oss/model/UdfApplicationLog;->udfName:Ljava/lang/String;

    return-void
.end method
