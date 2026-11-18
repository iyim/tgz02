.class public Lcom/aliyun/oss/internal/OSSUdfOperation;
.super Lcom/aliyun/oss/internal/OSSOperation;
.source "OSSUdfOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static populateGetUdfApplicationLogParameters(Ljava/util/Map;Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;",
            ")V"
        }
    .end annotation

    const-string v0, "udfApplicationLog"

    const/4 v1, 0x0

    .line 437
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->getStartTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "since"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->getEndLines()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tail"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public createUdf(Lcom/aliyun/oss/model/CreateUdfRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "createUdfRequest"

    .line 78
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateUdfRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createUdfRequest.name"

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "udf"

    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createUdfRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;->marshall(Lcom/aliyun/oss/model/CreateUdfRequest;)[B

    move-result-object v2

    .line 86
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    array-length v3, v2

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 95
    sget-object v0, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public createUdfApplication(Lcom/aliyun/oss/model/CreateUdfApplicationRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "createUdfApplicationRequest"

    .line 250
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateUdfApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 253
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 256
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v4, "udfApplication"

    .line 257
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comp"

    const-string v1, "create"

    .line 259
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;->marshall(Lcom/aliyun/oss/model/CreateUdfApplicationRequest;)[B

    move-result-object v0

    .line 264
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    array-length v2, v0

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 273
    sget-object v0, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteUdf(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 133
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 136
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v4, "udf"

    .line 140
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 150
    sget-object v0, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public deleteUdfApplication(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 312
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 315
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 318
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "udfApplication"

    const/4 v4, 0x0

    .line 319
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 329
    sget-object v2, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    return-void
.end method

.method public deleteUdfImage(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 224
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 227
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 230
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "udfImage"

    const/4 v4, 0x0

    .line 231
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 241
    sget-object v2, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    return-void
.end method

.method public getUdfApplicationInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfApplicationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 278
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 281
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "udfApplication"

    const/4 v4, 0x0

    .line 285
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 295
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/UdfApplicationInfo;

    return-object p1
.end method

.method public getUdfApplicationLog(Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)Lcom/aliyun/oss/model/UdfApplicationLog;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "resizeUdfApplicationRequest"

    .line 393
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 396
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 399
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 400
    invoke-static {v1, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation;->populateGetUdfApplicationLogParameters(Ljava/util/Map;Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)V

    .line 402
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v3

    .line 409
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    .line 412
    :try_start_0
    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 413
    new-instance v4, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;

    invoke-direct {v4, v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/UdfApplicationLog;

    .line 414
    invoke-virtual {v0}, Lcom/aliyun/oss/model/UdfApplicationLog;->getLogContent()Ljava/io/InputStream;

    move-result-object v1

    .line 415
    new-instance v2, Lcom/aliyun/oss/internal/OSSUdfOperation$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/aliyun/oss/internal/OSSUdfOperation$1;-><init>(Lcom/aliyun/oss/internal/OSSUdfOperation;Ljava/io/InputStream;Lcom/aliyun/oss/event/ProgressListener;)V

    .line 421
    new-instance v1, Lcom/aliyun/oss/common/utils/CRC64;

    invoke-direct {v1}, Lcom/aliyun/oss/common/utils/CRC64;-><init>()V

    .line 422
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    invoke-direct {v3, v2, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 423
    invoke-virtual {v0, v3}, Lcom/aliyun/oss/model/UdfApplicationLog;->setLogContent(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 425
    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 426
    throw v0
.end method

.method public getUdfImageInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/UdfGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 203
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 206
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "udfImage"

    const/4 v4, 0x0

    .line 210
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfImageInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getUdfInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 99
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UdfGenericRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 102
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 105
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "udf"

    const/4 v4, 0x0

    .line 106
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v1, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v1

    .line 116
    sget-object v2, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/UdfInfo;

    return-object p1
.end method

.method public listUdfApplication()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "udfApplication"

    const/4 v2, 0x0

    .line 300
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 308
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->listUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public listUdfs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "udf"

    const/4 v2, 0x0

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 129
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->listUdfResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public resizeUdfApplication(Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "resizeUdfApplicationRequest"

    .line 365
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 368
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v4, "udfApplication"

    .line 372
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comp"

    const-string v1, "resize"

    .line 374
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->resizeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;->marshall(Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;)[B

    move-result-object v0

    .line 379
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    array-length v2, v0

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 388
    sget-object v0, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public upgradeUdfApplication(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "upgradeUdfApplicationRequest"

    .line 337
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "udfName"

    .line 340
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const-string v4, "udfApplication"

    .line 344
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "comp"

    const-string v1, "upgrade"

    .line 346
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->upgradeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;->marshall(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)[B

    move-result-object v0

    .line 351
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    array-length v2, v0

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 360
    sget-object v0, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v0, v3, v3}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public uploadUdfImage(Lcom/aliyun/oss/model/UploadUdfImageRequest;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "uploadUdfImageRequest"

    .line 158
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getUdfImage()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "udfImage"

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 165
    :try_start_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getUdfImage()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/IOUtils;->newRepeatableInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 172
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v4, 0x0

    .line 173
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "udfName"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getUdfImageDesc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getUdfImageDesc()Ljava/lang/String;

    move-result-object v1

    const-string v4, "udfImageDesc"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/OSSUdfOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setHeaders(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/aliyun/oss/internal/OSSUtils;->determineInputStreamLength(Ljava/io/InputStream;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputSize(J)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 190
    invoke-virtual {p1}, Lcom/aliyun/oss/model/UploadUdfImageRequest;->getProgressListener()Lcom/aliyun/oss/event/ProgressListener;

    move-result-object p1

    .line 192
    :try_start_1
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_STARTED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v0}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 193
    sget-object v3, Lcom/aliyun/oss/internal/OSSUdfOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/OSSUdfOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_COMPLETED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v0}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/aliyun/oss/event/ProgressEventType;->TRANSFER_FAILED_EVENT:Lcom/aliyun/oss/event/ProgressEventType;

    invoke-static {p1, v1}, Lcom/aliyun/oss/event/ProgressPublisher;->publishProgress(Lcom/aliyun/oss/event/ProgressListener;Lcom/aliyun/oss/event/ProgressEventType;)V

    .line 197
    throw v0

    :catch_1
    move-exception p1

    const-string v0, "Cannot wrap to repeatable input stream: "

    .line 167
    invoke-static {v0, p1}, Lcom/aliyun/oss/common/utils/LogUtils;->logException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    new-instance v1, Lcom/aliyun/oss/ClientException;

    invoke-direct {v1, v0, p1}, Lcom/aliyun/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
