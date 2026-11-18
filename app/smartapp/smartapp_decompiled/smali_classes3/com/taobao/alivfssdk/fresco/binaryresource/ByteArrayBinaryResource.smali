.class public Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;
.super Ljava/lang/Object;
.source "ByteArrayBinaryResource.java"

# interfaces
.implements Lcom/taobao/alivfssdk/fresco/binaryresource/BinaryResource;


# instance fields
.field private mBytes:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/taobao/alivfssdk/fresco/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-object v0
.end method

.method public openStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public read()[B
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-object v0
.end method

.method public setBytes([B)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    return-void
.end method

.method public size()J
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/taobao/alivfssdk/fresco/binaryresource/ByteArrayBinaryResource;->mBytes:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
