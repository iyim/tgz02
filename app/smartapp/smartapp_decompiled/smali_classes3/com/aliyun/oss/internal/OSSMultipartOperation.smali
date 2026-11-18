.class public Lcom/aliyun/oss/internal/OSSMultipartOperation;
.super Lcom/aliyun/oss/internal/OSSOperation;
.source "OSSMultipartOperation.java"


# static fields
.field private static final LIST_PART_MAX_RETURNS:I = 0x3e8

.field private static final LIST_UPLOAD_MAX_RETURNS:I = 0x3e8

.field private static final MAX_PART_NUMBER:I = 0x2710


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static calcObjectCRCFromParts(Ljava/util/List;)Ljava/lang/Long;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/PartETag;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 565
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aliyun/oss/model/PartETag;

    .line 566
    invoke-virtual {v4}, Lcom/aliyun/oss/model/PartETag;->getPartCRC()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/aliyun/oss/model/PartETag;->getPartSize()J

    move-result-wide v5

    cmp-long v7, v5, v0

    if-gtz v7, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    invoke-virtual {v4}, Lcom/aliyun/oss/model/PartETag;->getPartCRC()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/aliyun/oss/model/PartETag;->getPartSize()J

    move-result-wide v7

    move-wide v4, v5

    move-wide v6, v7

    invoke-static/range {v2 .. v7}, Lcom/aliyun/oss/common/utils/CRC64;->combine(JJJ)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 571
    :cond_2
    new-instance p0, Ljava/lang/Long;

    invoke-direct {p0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object p0
.end method

.method private static isNeedReturnResponse(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Z
    .locals 1

    .line 575
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getProcess()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static populateCompleteMultipartUploadOptionalHeaders(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getObjectACL()Lcom/aliyun/oss/model/CannedAccessControlList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 559
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "x-oss-object-acl"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static populateCopyPartRequestHeaders(Lcom/aliyun/oss/model/UploadPartCopyRequest;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/UploadPartCopyRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-MD5"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-oss-copy-source"

    .line 518
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getBeginIndex()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getBeginIndex()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getBeginIndex()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v1, v3

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-oss-copy-source-range"

    .line 523
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    :cond_2
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-modified-since"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 528
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-unmodified-since"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 531
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-match"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 533
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getNonmatchingEtagConstraints()Ljava/util/List;

    move-result-object p0

    const-string v0, "x-oss-copy-source-if-none-match"

    invoke-static {p1, v0, p0}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static populateListMultipartUploadsRequestParameters(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/ListMultipartUploadsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uploads"

    const/4 v1, 0x0

    .line 445
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delimiter"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getKeyMarker()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key-marker"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 457
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getMaxUploads()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "max-uploads"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MaxUploadsOutOfRange"

    invoke-virtual {p1, v1, v0}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 464
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 465
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefix"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_4
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 469
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getUploadIdMarker()Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload-id-marker"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_5
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 473
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "encoding-type"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method private static populateListPartsRequestParameters(Lcom/aliyun/oss/model/ListPartsRequest;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/ListPartsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "uploadId"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListPartsRequest;->getMaxParts()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "max-parts"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 485
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "MaxPartsOutOfRange"

    invoke-virtual {p1, v1, v0}, Lcom/aliyun/oss/common/utils/ResourceManager;->getFormattedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 491
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListPartsRequest;->getPartNumberMarker()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 493
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "part-number-marker"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 494
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v0, "PartNumberMarkerOutOfRange"

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 500
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListPartsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p0

    const-string v0, "encoding-type"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static populateUploadPartOptionalHeaders(Lcom/aliyun/oss/model/UploadPartRequest;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/UploadPartRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartRequest;->isUseChunkEncoding()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartRequest;->getPartSize()J

    move-result-wide v9

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const-wide v6, 0x140000000L

    const/4 v8, 0x1

    move-wide v1, v9

    .line 542
    invoke-static/range {v1 .. v8}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 543
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    sget-object p1, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v0, "FileSizeOutOfRange"

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/aliyun/oss/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Content-MD5"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/aliyun/oss/model/AbortMultipartUploadRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "abortMultipartUploadRequest"

    .line 107
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bucketName"

    .line 113
    invoke-static {v1, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v3, "key"

    .line 115
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v3, "uploadId"

    .line 117
    invoke-static {v2, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 131
    sget-object v2, Lcom/aliyun/oss/internal/OSSMultipartOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v1, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "completeMultipartUploadRequest"

    .line 141
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 147
    invoke-static {v4, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v1, "key"

    .line 149
    invoke-static {v5, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v1, "uploadId"

    .line 151
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->ensureCallbackValid(Lcom/aliyun/oss/model/Callback;)V

    .line 154
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 155
    invoke-static {p1, v2}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->populateCompleteMultipartUploadOptionalHeaders(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;Ljava/util/Map;)V

    .line 156
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestCallback(Ljava/util/Map;Lcom/aliyun/oss/model/Callback;)V

    .line 158
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/aliyun/oss/internal/OSSMultipartOperation$1;

    invoke-direct {v1, p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation$1;-><init>(Lcom/aliyun/oss/internal/OSSMultipartOperation;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->completeMultipartUploadRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;->marshall(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStreamWithLength(Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 180
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v0, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;-><init>()V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->isNeedReturnResponse(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->completeMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    goto :goto_0

    .line 187
    :cond_0
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->completeMultipartUploadProcessResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    .line 190
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->calcObjectCRCFromParts(Ljava/util/List;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setClientCRC(Ljava/lang/Long;)V

    .line 191
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->isCrcCheckEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public initiateMultipartUpload(Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "initiateMultipartUploadRequest"

    .line 207
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-virtual {p1}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "bucketName"

    .line 212
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "key"

    .line 214
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    invoke-virtual {p1}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {p1}, Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/aliyun/oss/model/ObjectMetadata;)V

    :cond_0
    const-string v1, "Content-Length"

    .line 224
    invoke-static {v0, v1}, Lcom/aliyun/oss/internal/OSSUtils;->removeHeader(Ljava/util/Map;Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const-string v3, "uploads"

    .line 227
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 243
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->initiateMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method public listMultipartUploads(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;)Lcom/aliyun/oss/model/MultipartUploadListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "listMultipartUploadsRequest"

    .line 253
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ListMultipartUploadsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "bucketName"

    .line 256
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 260
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 261
    invoke-static {p1, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->populateListMultipartUploadsRequestParameters(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;Ljava/util/Map;)V

    .line 263
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 271
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->listMultipartUploadsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/MultipartUploadListing;

    return-object p1
.end method

.method public listParts(Lcom/aliyun/oss/model/ListPartsRequest;)Lcom/aliyun/oss/model/PartListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "listPartsRequest"

    .line 280
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ListPartsRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 283
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ListPartsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ListPartsRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 286
    invoke-static {v4, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v1, "key"

    .line 288
    invoke-static {v5, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v1, "uploadId"

    .line 290
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 294
    invoke-static {p1, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->populateListPartsRequestParameters(Lcom/aliyun/oss/model/ListPartsRequest;Ljava/util/Map;)V

    .line 296
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 305
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->listPartsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/PartListing;

    return-object p1
.end method

.method public uploadPart(Lcom/aliyun/oss/model/UploadPartRequest;)Lcom/aliyun/oss/model/UploadPartResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "uploadPartRequest"

    .line 314
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bucketName"

    .line 320
    invoke-static {v1, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v3, "key"

    .line 322
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v3, "uploadId"

    .line 324
    invoke-static {v2, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 332
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->buildPartialStream()Lcom/aliyun/oss/common/comm/io/BoundedInputStream;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/oss/common/utils/IOUtils;->newRepeatableInputStream(Lcom/aliyun/oss/common/comm/io/BoundedInputStream;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 338
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getPartNumber()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x2710

    const/4 v13, 0x1

    .line 339
    invoke-static/range {v6 .. v13}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 344
    invoke-static {p1, v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->populateUploadPartOptionalHeaders(Lcom/aliyun/oss/model/UploadPartRequest;Ljava/util/Map;)V

    .line 347
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 348
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "partNumber"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getPartSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->isUseChunkEncoding()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setUseChunkEncoding(Z)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 364
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object v3

    .line 367
    :try_start_1
    sget-object v4, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v3, v4}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 368
    sget-object v4, Lcom/aliyun/oss/internal/OSSMultipartOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, v2, v4, v1, v0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/common/comm/ResponseMessage;

    .line 369
    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v3, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 375
    new-instance v1, Lcom/aliyun/oss/model/UploadPartResult;

    invoke-direct {v1}, Lcom/aliyun/oss/model/UploadPartResult;-><init>()V

    .line 376
    invoke-virtual {v1, v5}, Lcom/aliyun/oss/model/UploadPartResult;->setPartNumber(I)V

    .line 377
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "ETag"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/UploadPartResult;->setRequestId(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartRequest;->getPartSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aliyun/oss/model/UploadPartResult;->setPartSize(J)V

    .line 380
    invoke-static {v1, v0}, Lcom/aliyun/oss/internal/ResponseParsers;->setCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V

    .line 382
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/ClientConfiguration;->isCrcCheckEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {v1}, Lcom/aliyun/oss/model/UploadPartResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1}, Lcom/aliyun/oss/model/UploadPartResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1}, Lcom/aliyun/oss/model/UploadPartResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception p1

    .line 371
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_PART_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {v3, v0}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 372
    throw p1

    .line 340
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "PartNumberOutOfRange"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p1

    const-string v0, "Cannot wrap to repeatable input stream: "

    .line 334
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 335
    new-instance v1, Lcom/aliyun/oss/ClientException;

    invoke-direct {v1, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 327
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "MustSetContentStream"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public uploadPartCopy(Lcom/aliyun/oss/model/UploadPartCopyRequest;)Lcom/aliyun/oss/model/UploadPartCopyResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "uploadPartCopyRequest"

    .line 395
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 398
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 399
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 401
    invoke-static {v4, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v1, "key"

    .line 403
    invoke-static {v5, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v1, "uploadId"

    .line 405
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartSize()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 409
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const-wide v11, 0x140000000L

    const/4 v13, 0x1

    invoke-static/range {v6 .. v13}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "FileSizeOutOfRange"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 414
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadPartCopyRequest;->getPartNumber()I

    move-result v2

    int-to-long v6, v2

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x2710

    const/4 v13, 0x1

    .line 415
    invoke-static/range {v6 .. v13}, Lcom/aliyun/oss/common/utils/CodingUtils;->checkParamRange(JJZJZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 420
    invoke-static {p1, v3}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->populateCopyPartRequestHeaders(Lcom/aliyun/oss/model/UploadPartCopyRequest;Ljava/util/Map;)V

    .line 423
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "partNumber"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 437
    new-instance v3, Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;

    invoke-direct {v3, v2}, Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;-><init>(I)V

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSMultipartOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/UploadPartCopyResult;

    return-object p1

    .line 416
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v1, "PartNumberOutOfRange"

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
