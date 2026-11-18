.class public Lcom/aliyun/oss/model/ListObjectsRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "ListObjectsRequest.java"


# static fields
.field private static final MAX_RETURNED_KEYS_LIMIT:I = 0x3e8


# instance fields
.field private delimiter:Ljava/lang/String;

.field private encodingType:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 53
    invoke-direct/range {v0 .. v5}, Lcom/aliyun/oss/model/ListObjectsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p4}, Lcom/aliyun/oss/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 75
    invoke-virtual {p0, p5}, Lcom/aliyun/oss/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setEncodingType(Ljava/lang/String;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->encodingType:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 155
    iput-object p1, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->maxKeys:Ljava/lang/Integer;

    return-void

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "MaxKeysOutOfRange"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/aliyun/oss/model/ListObjectsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public withDelimiter(Ljava/lang/String;)Lcom/aliyun/oss/model/ListObjectsRequest;
    .locals 0

    .line 189
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListObjectsRequest;->setDelimiter(Ljava/lang/String;)V

    return-object p0
.end method

.method public withEncodingType(Ljava/lang/String;)Lcom/aliyun/oss/model/ListObjectsRequest;
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListObjectsRequest;->setEncodingType(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMarker(Ljava/lang/String;)Lcom/aliyun/oss/model/ListObjectsRequest;
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListObjectsRequest;->setMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/aliyun/oss/model/ListObjectsRequest;
    .locals 0

    .line 164
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListObjectsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/aliyun/oss/model/ListObjectsRequest;
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListObjectsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method
