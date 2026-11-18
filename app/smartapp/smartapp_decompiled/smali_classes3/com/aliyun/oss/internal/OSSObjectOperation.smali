.class public Lcom/aliyun/oss/internal/OSSObjectOperation;
.super Lcom/aliyun/oss/internal/OSSOperation;
.source "OSSObjectOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;,
        Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addDeleteObjectsOptionalHeaders(Ljava/util/Map;Lcom/aliyun/oss/model/DeleteObjectsRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aliyun/oss/model/DeleteObjectsRequest;",
            ")V"
        }
    .end annotation

    .line 995
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->getEncodingType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "encoding-type"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static addDeleteObjectsRequiredHeaders(Ljava/util/Map;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .line 986
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object p1

    .line 989
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-MD5"

    .line 990
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addGetObjectRangeHeader([JLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1001
    invoke-static {p0}, Lcom/aliyun/oss/common/utils/RangeSpec;->parse([J)Lcom/aliyun/oss/common/utils/RangeSpec;

    move-result-object p0

    .line 1002
    invoke-virtual {p0}, Lcom/aliyun/oss/common/utils/RangeSpec;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Range"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private hasRangeInRequest(Lcom/aliyun/oss/model/GetObjectRequest;)Z
    .locals 1

    .line 924
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "Range"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isCrcCheckEnabled()Z
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/ClientConfiguration;->isCrcCheckEnabled()Z

    move-result v0

    return v0
.end method

.method private static isNeedReturnResponse(Lcom/aliyun/oss/model/PutObjectRequest;)Z
    .locals 1

    .line 1021
    invoke-virtual {p0}, Lcom/aliyun/oss/model/PutObjectRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/aliyun/oss/model/PutObjectRequest;->getProcess()Ljava/lang/String;

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

.method private static populateCopyObjectHeaders(Lcom/aliyun/oss/model/CopyObjectRequest;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/CopyObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getSourceBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getSourceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-oss-copy-source"

    .line 932
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-modified-since"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 936
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-unmodified-since"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 939
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-match"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 941
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getNonmatchingEtagConstraints()Ljava/util/List;

    move-result-object v0

    const-string v1, "x-oss-copy-source-if-none-match"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 944
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getServerSideEncryption()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-oss-server-side-encryption"

    invoke-static {p1, v1, v0}, Lcom/aliyun/oss/internal/OSSUtils;->addHeader(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {p0}, Lcom/aliyun/oss/model/CopyObjectRequest;->getNewObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 949
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->REPLACE:Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSObjectOperation$MetadataDirective;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-oss-metadata-directive"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    invoke-static {p1, p0}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/aliyun/oss/model/ObjectMetadata;)V

    :cond_0
    const-string p0, "Content-Length"

    .line 954
    invoke-static {p1, p0}, Lcom/aliyun/oss/internal/OSSUtils;->removeHeader(Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method private static populateGetObjectRequestHeaders(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GetObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 960
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getRange()[J

    move-result-object v0

    invoke-static {v0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->addGetObjectRangeHeader([JLjava/util/Map;)V

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Modified-Since"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    :cond_1
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/DateUtil;->formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Unmodified-Since"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    :cond_2
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 975
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->joinETags(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "If-Match"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_3
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 980
    invoke-virtual {p0}, Lcom/aliyun/oss/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/internal/OSSUtils;->joinETags(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "If-None-Match"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method private static populateWriteObjectParams(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;",
            "Lcom/aliyun/oss/model/PutObjectRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1008
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string v0, "append"

    .line 1013
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    check-cast p1, Lcom/aliyun/oss/model/AppendObjectRequest;

    .line 1015
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getPosition()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1016
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getPosition()Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "position"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private writeObjectInternal(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Lcom/aliyun/oss/common/parser/ResponseParser;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestType:",
            "Lcom/aliyun/oss/model/PutObjectRequest;",
            "ResponseType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;",
            "TRequestType;",
            "Lcom/aliyun/oss/common/parser/ResponseParser<",
            "TResponseType;>;)TResponseType;"
        }
    .end annotation

    .line 832
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    .line 833
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 834
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 835
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    .line 837
    new-instance v1, Lcom/aliyun/oss/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/aliyun/oss/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v2, "bucketName"

    .line 840
    invoke-static {v3, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "key"

    .line 841
    invoke-static {v4, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    invoke-static {v3}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 843
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->ensureCallbackValid(Lcom/aliyun/oss/model/Callback;)V

    .line 847
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 848
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v0

    .line 850
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/IOUtils;->checkFile(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 855
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/aliyun/oss/model/ObjectMetadata;->setContentLength(J)V

    .line 856
    invoke-virtual {v1}, Lcom/aliyun/oss/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 857
    invoke-static {}, Lcom/aliyun/oss/internal/Mimetypes;->getInstance()Lcom/aliyun/oss/internal/Mimetypes;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 861
    :cond_1
    :try_start_0
    new-instance v2, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;

    invoke-direct {v2, v0}, Lcom/aliyun/oss/common/comm/io/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Cannot locate file to upload: "

    .line 863
    invoke-static {p2, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 864
    new-instance p3, Lcom/aliyun/oss/ClientException;

    invoke-direct {p3, p2, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 851
    :cond_2
    invoke-static {}, Lcom/aliyun/oss/common/utils/LogUtils;->getLog()Lorg/apache/commons/logging/Log;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Illegal file path: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 852
    new-instance p1, Lcom/aliyun/oss/ClientException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    if-eqz v0, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    const-string v5, "Please specify input stream or file to upload"

    .line 867
    invoke-static {v2, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertTrue(ZLjava/lang/String;)V

    .line 869
    invoke-virtual {v1}, Lcom/aliyun/oss/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 870
    invoke-static {}, Lcom/aliyun/oss/internal/Mimetypes;->getInstance()Lcom/aliyun/oss/internal/Mimetypes;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 874
    :cond_5
    :try_start_1
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/IOUtils;->newRepeatableInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 881
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 882
    invoke-static {v0, v1}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/aliyun/oss/model/ObjectMetadata;)V

    .line 883
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestCallback(Ljava/util/Map;Lcom/aliyun/oss/model/Callback;)V

    .line 884
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 885
    invoke-static {p1, p2, v5}, Lcom/aliyun/oss/internal/OSSObjectOperation;->populateWriteObjectParams(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Ljava/util/Map;)V

    .line 887
    new-instance v6, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v6

    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->getMappingMethod(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;)Lcom/aliyun/oss/HttpMethod;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {v1}, Lcom/aliyun/oss/model/ObjectMetadata;->getContentLength()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/aliyun/oss/internal/OSSUtils;->determineInputStreamLength(Ljava/io/InputStream;J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 899
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 900
    new-instance p1, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;

    invoke-direct {p1}, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;-><init>()V

    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    .line 905
    :try_start_2
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v0}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 906
    invoke-virtual {p2}, Lcom/aliyun/oss/model/PutObjectRequest;->getCallback()Lcom/aliyun/oss/model/Callback;

    move-result-object p2

    if-nez p2, :cond_6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p3

    .line 907
    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p3

    .line 909
    invoke-virtual/range {v0 .. v7}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    .line 911
    :goto_2
    sget-object p3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, p3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p2

    :catch_1
    move-exception p2

    .line 913
    sget-object p3, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, p3}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 914
    throw p2

    :catch_2
    move-exception p1

    const-string p2, "Cannot wrap to repeatable input stream: "

    .line 876
    invoke-static {p2, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 877
    new-instance p3, Lcom/aliyun/oss/ClientException;

    invoke-direct {p3, p2, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method


# virtual methods
.method public appendObject(Lcom/aliyun/oss/model/AppendObjectRequest;)Lcom/aliyun/oss/model/AppendObjectResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "appendObjectRequest"

    .line 202
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->APPEND:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    sget-object v1, Lcom/aliyun/oss/internal/ResponseParsers;->appendObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;

    invoke-direct {p0, v0, p1, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->writeObjectInternal(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Lcom/aliyun/oss/common/parser/ResponseParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/AppendObjectResult;

    .line 206
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getInitCRC()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getInitCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getNextPosition()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getPosition()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static/range {v2 .. v7}, Lcom/aliyun/oss/common/utils/CRC64;->combine(JJJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/AppendObjectResult;->setClientCRC(Ljava/lang/Long;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->isCrcCheckEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/AppendObjectRequest;->getInitCRC()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Lcom/aliyun/oss/model/AppendObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public copyObject(Lcom/aliyun/oss/model/CopyObjectRequest;)Lcom/aliyun/oss/model/CopyObjectResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "copyObjectRequest"

    .line 408
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    invoke-static {p1, v0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->populateCopyObjectHeaders(Lcom/aliyun/oss/model/CopyObjectRequest;Ljava/util/Map;)V

    .line 413
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 422
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->copyObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CopyObjectRequest;->getDestinationBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/aliyun/oss/model/CopyObjectRequest;->getDestinationKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/CopyObjectResult;

    return-object p1
.end method

.method public createSymlink(Lcom/aliyun/oss/model/CreateSymlinkRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "createSymlinkRequest"

    .line 655
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->getSymlink()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bucketName"

    .line 661
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "symlink"

    .line 662
    invoke-static {v1, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "target"

    .line 663
    invoke-static {v2, v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 664
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 665
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 666
    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateSymlinkRequest;->getMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object v4

    if-nez v4, :cond_0

    .line 670
    new-instance v4, Lcom/aliyun/oss/model/ObjectMetadata;

    invoke-direct {v4}, Lcom/aliyun/oss/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v5, "utf-8"

    .line 674
    invoke-static {v2, v5}, Lcom/aliyun/oss/common/utils/HttpUtil;->urlEncode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "x-oss-symlink-target"

    .line 675
    invoke-virtual {v4, v6, v5}, Lcom/aliyun/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    invoke-virtual {v4}, Lcom/aliyun/oss/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 678
    invoke-static {}, Lcom/aliyun/oss/internal/Mimetypes;->getInstance()Lcom/aliyun/oss/internal/Mimetypes;

    move-result-object v5

    invoke-virtual {v5, v2, v1}, Lcom/aliyun/oss/internal/Mimetypes;->getMimetype(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/aliyun/oss/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    .line 681
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 682
    invoke-static {v2, v4}, Lcom/aliyun/oss/internal/OSSUtils;->populateRequestMetadata(Ljava/util/Map;Lcom/aliyun/oss/model/ObjectMetadata;)V

    .line 684
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    .line 685
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v5, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 697
    sget-object v2, Lcom/aliyun/oss/internal/OSSObjectOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObject(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 433
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 438
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v2, "key"

    .line 440
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 443
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 451
    sget-object v2, Lcom/aliyun/oss/internal/OSSObjectOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteObjects(Lcom/aliyun/oss/model/DeleteObjectsRequest;)Lcom/aliyun/oss/model/DeleteObjectsResult;
    .locals 7

    const-string v0, "deleteObjectsRequest"

    .line 459
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/aliyun/oss/model/DeleteObjectsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "bucketName"

    .line 462
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "delete"

    const/4 v2, 0x0

    .line 466
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->deleteObjectsRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;->marshall(Lcom/aliyun/oss/model/DeleteObjectsRequest;)[B

    move-result-object v1

    .line 469
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 470
    invoke-static {v2, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->addDeleteObjectsRequiredHeaders(Ljava/util/Map;[B)V

    .line 471
    invoke-static {v2, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->addDeleteObjectsOptionalHeaders(Ljava/util/Map;Lcom/aliyun/oss/model/DeleteObjectsRequest;)V

    .line 473
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v5, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 484
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->deleteObjectsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/DeleteObjectsResult;

    return-object p1
.end method

.method public doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 737
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    :try_end_0
    .catch Lcom/aliyun/oss/OSSException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 740
    invoke-virtual {p1}, Lcom/aliyun/oss/OSSException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoSuchBucket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/aliyun/oss/OSSException;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoSuchKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public doesObjectExistWithRedirect(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 752
    :try_start_0
    new-instance v0, Lcom/aliyun/oss/model/GetObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/aliyun/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p0, v0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/aliyun/oss/OSSException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 764
    :try_start_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/OSSObject;->forcedClose()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Forced close failed: "

    .line 766
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return p2

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 756
    :try_start_2
    invoke-virtual {p1}, Lcom/aliyun/oss/OSSException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NoSuchBucket"

    if-eq p2, v0, :cond_2

    invoke-virtual {p1}, Lcom/aliyun/oss/OSSException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NoSuchKey"

    if-ne p2, v0, :cond_1

    goto :goto_1

    .line 760
    :cond_1
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 767
    :goto_2
    throw p1
.end method

.method public getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "getObjectRequest"

    .line 224
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->isUseUrlSignature()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 231
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 236
    invoke-static {v2, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "key"

    .line 237
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 239
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-static {p1, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->populateGetObjectRequestHeaders(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/util/Map;)V

    .line 244
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 245
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getResponseHeaders()Lcom/aliyun/oss/model/ResponseHeaderOverrides;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/aliyun/oss/internal/OSSUtils;->populateResponseHeaderParameters(Ljava/util/Map;Lcom/aliyun/oss/model/ResponseHeaderOverrides;)V

    .line 247
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getProcess()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "x-oss-process"

    .line 249
    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_0
    new-instance v4, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    move-object v7, v0

    move-object v4, v1

    move-object v6, v2

    goto :goto_0

    .line 262
    :cond_1
    new-instance v1, Lcom/aliyun/oss/common/comm/RequestMessage;

    invoke-direct {v1, p1}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>(Lcom/aliyun/oss/model/WebServiceRequest;)V

    .line 263
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 264
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getAbsoluteUri()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setAbsoluteUrl(Ljava/net/URL;)V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setUseUrlSignature(Z)V

    .line 266
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setHeaders(Ljava/util/Map;)V

    move-object v4, v1

    move-object v6, v2

    move-object v7, v6

    .line 269
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetObjectRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    .line 272
    :try_start_0
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v0}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 273
    new-instance v5, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;

    invoke-direct {v5, v6, v7}, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/OSSObject;

    .line 275
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v1

    .line 276
    new-instance v2, Lcom/aliyun/oss/internal/OSSObjectOperation$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation$1;-><init>(Lcom/aliyun/oss/internal/OSSObjectOperation;Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    .line 282
    new-instance v1, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-direct {v1}, Lcom/aliyun/oss/common/utils/CRC64;-><init>()V

    .line 283
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v3, v2, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 284
    invoke-virtual {v0, v3}, Lcom/aliyun/oss/model/OSSObject;->setObjectContent(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 286
    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 287
    throw v0
.end method

.method public getObject(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/io/File;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "file"

    .line 299
    invoke-static {p2, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;

    move-result-object v0

    const/4 v1, 0x0

    .line 305
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 p2, 0x2000

    .line 306
    :try_start_1
    new-array p2, p2, [B

    .line 308
    :goto_0
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    .line 309
    invoke-virtual {v2, p2, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->isCrcCheckEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->hasRangeInRequest(Lcom/aliyun/oss/model/GetObjectRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 313
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/aliyun/oss/common/utils/IOUtils;->getCRCValue(Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    .line 314
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getServerCRC()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 317
    :cond_1
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectMetadata()Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-static {v2}, Lcom/aliyun/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/aliyun/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    return-object p1

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_1
    :try_start_2
    const-string p2, "Cannot read object content stream: "

    .line 319
    invoke-static {p2, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    new-instance p2, Lcom/aliyun/oss/ClientException;

    sget-object v2, Lcom/aliyun/oss/internal/OSSUtils;->OSS_RESOURCE_MANAGER:Lcom/aliyun/oss/common/utils/ResourceManager;

    const-string v3, "CannotReadContentStream"

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/common/utils/ResourceManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 322
    :goto_2
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/IOUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {v0}, Lcom/aliyun/oss/model/OSSObject;->getObjectContent()Ljava/io/InputStream;

    move-result-object p2

    invoke-static {p2}, Lcom/aliyun/oss/common/utils/IOUtils;->safeClose(Ljava/io/InputStream;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public getObjectAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectAcl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 563
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 568
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 569
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "key"

    .line 570
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 573
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "acl"

    const/4 v2, 0x0

    .line 574
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

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

    .line 585
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getObjectAclResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/ObjectAcl;

    return-object p1
.end method

.method public getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 363
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 368
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 369
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 371
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 373
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->HEAD:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 381
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 382
    new-instance p1, Lcom/aliyun/oss/internal/OSSObjectOperation$2;

    invoke-direct {p1, p0}, Lcom/aliyun/oss/internal/OSSObjectOperation$2;-><init>(Lcom/aliyun/oss/internal/OSSObjectOperation;)V

    invoke-interface {v8, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getObjectMetadataResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/ObjectMetadata;

    return-object p1
.end method

.method public getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .locals 7

    const-string v0, "genericRequest"

    .line 332
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 335
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 337
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    .line 338
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 340
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "objectMeta"

    const/4 v2, 0x0

    .line 343
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

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

    .line 354
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getSimplifiedObjectMetaResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    return-object p1
.end method

.method public getSymlink(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/OSSSymlink;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 620
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 623
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 625
    invoke-static {v4, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "symlink"

    .line 626
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 628
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 630
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 631
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 642
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getSymbolicLinkResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/OSSSymlink;

    if-eqz p1, :cond_0

    .line 646
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/aliyun/oss/model/OSSSymlink;->setSymlink(Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public headObject(Lcom/aliyun/oss/model/HeadObjectRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "headObjectRequest"

    .line 493
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 496
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 498
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v2, "key"

    .line 500
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 503
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 504
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    const-string v4, "If-Modified-Since"

    invoke-static {v2, v4, v3}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 506
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    const-string v4, "If-Unmodified-Since"

    invoke-static {v2, v4, v3}, Lcom/aliyun/oss/internal/OSSUtils;->addDateHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/Date;)V

    .line 509
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    const-string v4, "If-Match"

    invoke-static {v2, v4, v3}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 511
    invoke-virtual {p1}, Lcom/aliyun/oss/model/HeadObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    const-string v4, "If-None-Match"

    invoke-static {v2, v4, v3}, Lcom/aliyun/oss/internal/OSSUtils;->addStringListHeader(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;)V

    .line 514
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->HEAD:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 523
    sget-object v2, Lcom/aliyun/oss/internal/OSSObjectOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public processObject(Lcom/aliyun/oss/model/ProcessObjectRequest;)Lcom/aliyun/oss/model/GenericResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 703
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ProcessObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 706
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ProcessObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 707
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ProcessObjectRequest;->getProcess()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 709
    invoke-static {v4, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v1, "key"

    .line 711
    invoke-static {v5, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v1, "process"

    .line 713
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "x-oss-process"

    const/4 v2, 0x0

    .line 716
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->processObjectRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;->marshall(Lcom/aliyun/oss/model/ProcessObjectRequest;)[B

    move-result-object v1

    .line 720
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

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

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 731
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->processObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/GenericResult;

    return-object p1
.end method

.method public putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "putObjectRequest"

    .line 143
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->isNeedReturnResponse(Lcom/aliyun/oss/model/PutObjectRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    sget-object v1, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;

    invoke-direct {p0, v0, p1, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->writeObjectInternal(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Lcom/aliyun/oss/common/parser/ResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/PutObjectResult;

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;->OVERWRITE:Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;

    sget-object v1, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectProcessReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;

    invoke-direct {p0, v0, p1, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->writeObjectInternal(Lcom/aliyun/oss/internal/OSSObjectOperation$WriteMode;Lcom/aliyun/oss/model/PutObjectRequest;Lcom/aliyun/oss/common/parser/ResponseParser;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/PutObjectResult;

    .line 153
    :goto_0
    invoke-direct {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->isCrcCheckEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getServerCRC()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "signedUrl"

    .line 166
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestContent"

    .line 167
    invoke-static {p2, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    .line 170
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 173
    :cond_0
    new-instance v1, Lcom/aliyun/oss/common/comm/RequestMessage;

    invoke-direct {v1}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>()V

    .line 174
    sget-object v0, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/common/comm/RequestMessage;->setMethod(Lcom/aliyun/oss/HttpMethod;)V

    .line 175
    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->setAbsoluteUrl(Ljava/net/URL;)V

    const/4 p1, 0x1

    .line 176
    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/comm/RequestMessage;->setUseUrlSignature(Z)V

    .line 177
    invoke-virtual {v1, p2}, Lcom/aliyun/oss/common/comm/RequestMessage;->setContent(Ljava/io/InputStream;)V

    .line 178
    invoke-static {p2, p3, p4, p6}, Lcom/aliyun/oss/internal/OSSUtils;->determineInputStreamLength(Ljava/io/InputStream;JZ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Lcom/aliyun/oss/common/comm/RequestMessage;->setContentLength(J)V

    .line 179
    invoke-virtual {v1, p5}, Lcom/aliyun/oss/common/comm/RequestMessage;->setHeaders(Ljava/util/Map;)V

    .line 180
    invoke-virtual {v1, p6}, Lcom/aliyun/oss/common/comm/RequestMessage;->setUseChunkEncoding(Z)V

    const-string p1, "x-oss-callback"

    .line 183
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 184
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/PutObjectResult;

    goto :goto_0

    .line 186
    :cond_1
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectProcessReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/PutObjectResult;

    .line 189
    :goto_0
    invoke-direct {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->isCrcCheckEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getClientCRC()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getServerCRC()Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1}, Lcom/aliyun/oss/model/PutObjectResult;->getRequestId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lcom/aliyun/oss/internal/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public restoreObject(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/RestoreObjectResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 591
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 596
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v2, "key"

    .line 598
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    .line 601
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "restore"

    const/4 v4, 0x0

    .line 602
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 615
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->restoreObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/RestoreObjectResult;

    return-object p1
.end method

.method public setObjectAcl(Lcom/aliyun/oss/model/SetObjectAclRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "setObjectAclRequest"

    .line 529
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetObjectAclRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetObjectAclRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 533
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetObjectAclRequest;->getCannedACL()Lcom/aliyun/oss/model/CannedAccessControlList;

    move-result-object v2

    const-string v3, "bucketName"

    .line 535
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v3, "key"

    .line 537
    invoke-static {v1, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureObjectKeyValid(Ljava/lang/String;)V

    const-string v3, "cannedAcl"

    .line 539
    invoke-static {v2, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 542
    invoke-virtual {v2}, Lcom/aliyun/oss/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "x-oss-object-acl"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v4, "acl"

    const/4 v5, 0x0

    .line 545
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v4, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSObjectOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    sget-object v5, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 557
    sget-object v2, Lcom/aliyun/oss/internal/OSSObjectOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/OSSObjectOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
