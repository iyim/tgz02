.class public Lcom/aliyun/oss/model/ListBucketsRequest;
.super Lcom/aliyun/oss/model/WebServiceRequest;
.source "ListBucketsRequest.java"


# static fields
.field public static final MAX_RETURNED_KEYS:I = 0x3e8


# instance fields
.field private bid:Ljava/lang/String;

.field private marker:Ljava/lang/String;

.field private maxKeys:Ljava/lang/Integer;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 56
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListBucketsRequest;->setPrefix(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/aliyun/oss/model/ListBucketsRequest;->setMarker(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p0, p3}, Lcom/aliyun/oss/model/ListBucketsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBid()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->bid:Ljava/lang/String;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxKeys()Ljava/lang/Integer;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->maxKeys:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public setBid(Ljava/lang/String;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->bid:Ljava/lang/String;

    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->marker:Ljava/lang/String;

    return-void
.end method

.method public setMaxKeys(Ljava/lang/Integer;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 139
    iput-object p1, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->maxKeys:Ljava/lang/Integer;

    return-void

    .line 136
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

    .line 78
    iput-object p1, p0, Lcom/aliyun/oss/model/ListBucketsRequest;->prefix:Ljava/lang/String;

    return-void
.end method

.method public withMarker(Ljava/lang/String;)Lcom/aliyun/oss/model/ListBucketsRequest;
    .locals 0

    .line 115
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListBucketsRequest;->setMarker(Ljava/lang/String;)V

    return-object p0
.end method

.method public withMaxKeys(Ljava/lang/Integer;)Lcom/aliyun/oss/model/ListBucketsRequest;
    .locals 0

    .line 148
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListBucketsRequest;->setMaxKeys(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withPrefix(Ljava/lang/String;)Lcom/aliyun/oss/model/ListBucketsRequest;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/ListBucketsRequest;->setPrefix(Ljava/lang/String;)V

    return-object p0
.end method
