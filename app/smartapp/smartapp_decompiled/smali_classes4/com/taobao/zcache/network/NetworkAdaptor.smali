.class abstract Lcom/taobao/zcache/network/NetworkAdaptor;
.super Ljava/lang/Object;
.source "NetworkAdaptor.java"


# instance fields
.field public error:Lcom/taobao/zcache/Error;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public close()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public abstract getHeaderField(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    .line 32
    invoke-virtual {p0}, Lcom/taobao/zcache/network/NetworkAdaptor;->getOriginInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Content-Encoding"

    .line 36
    invoke-virtual {p0, v2}, Lcom/taobao/zcache/network/NetworkAdaptor;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "gzip"

    .line 37
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, -0x5

    .line 41
    invoke-virtual {p0, v2, v0}, Lcom/taobao/zcache/network/NetworkAdaptor;->setExceptionError(ILjava/lang/Exception;)V

    return-object v1

    :cond_1
    return-object v0
.end method

.method protected abstract getOriginInputStream()Ljava/io/InputStream;
.end method

.method public abstract getStatusCode()I
.end method

.method public setExceptionError(ILjava/lang/Exception;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 64
    new-instance v0, Lcom/taobao/zcache/Error;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/taobao/zcache/Error;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/taobao/zcache/network/NetworkAdaptor;->error:Lcom/taobao/zcache/Error;

    :cond_0
    return-void
.end method
