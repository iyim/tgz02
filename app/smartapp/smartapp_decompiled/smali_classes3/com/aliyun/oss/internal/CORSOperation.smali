.class public Lcom/aliyun/oss/internal/CORSOperation;
.super Lcom/aliyun/oss/internal/OSSOperation;
.source "CORSOperation.java"


# static fields
.field private static final SUBRESOURCE_CORS:Ljava/lang/String; = "cors"


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static checkSetBucketCORSRequestValidity(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V
    .locals 3

    const-string v0, "setBucketCORSRequest"

    .line 154
    invoke-static {p0, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 157
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertStringNotNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->getCorsRules()Ljava/util/List;

    move-result-object v0

    const-string v1, "corsRules"

    .line 161
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertListNotNullOrEmpty(Ljava/util/List;Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->getCorsRules()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;

    .line 163
    invoke-virtual {v0}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v1

    const-string v2, "allowedOrigin"

    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertListNotNullOrEmpty(Ljava/util/List;Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v0

    const-string v1, "allowedMethod"

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertListNotNullOrEmpty(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public deleteBucketCORS(Lcom/aliyun/oss/model/GenericRequest;)V
    .locals 5

    const-string v0, "genericRequest"

    .line 106
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 109
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 112
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    const-string v3, "cors"

    .line 113
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 123
    sget-object v1, Lcom/aliyun/oss/internal/CORSOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/aliyun/oss/internal/CORSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    const-string v0, "genericRequest"

    .line 81
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "bucketName"

    .line 84
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "cors"

    const/4 v2, 0x0

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->GET:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketCorsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/CORSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public optionsObject(Lcom/aliyun/oss/model/OptionsRequest;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .locals 4

    const-string v0, "optionsRequest"

    .line 131
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/aliyun/oss/model/OptionsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bucketName"

    .line 134
    invoke-static {v0, v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    sget-object v2, Lcom/aliyun/oss/HttpMethod;->OPTIONS:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/OptionsRequest;->getObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/OptionsRequest;->getOrigin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "origin"

    invoke-virtual {v1, v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/OptionsRequest;->getRequestMethod()Lcom/aliyun/oss/HttpMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/aliyun/oss/HttpMethod;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Access-Control-Request-Method"

    invoke-virtual {v1, v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/OptionsRequest;->getRequestHeaders()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Access-Control-Request-Headers"

    invoke-virtual {v1, v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 149
    sget-object v1, Lcom/aliyun/oss/internal/CORSOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/aliyun/oss/internal/CORSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/common/comm/ResponseMessage;

    return-object p1
.end method

.method public setBucketCORS(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V
    .locals 4

    .line 59
    invoke-static {p1}, Lcom/aliyun/oss/internal/CORSOperation;->checkSetBucketCORSRequestValidity(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V

    .line 61
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    const-string v2, "cors"

    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/CORSOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    sget-object v2, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketCORSRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;->marshall(Lcom/aliyun/oss/model/SetBucketCORSRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setInputStreamWithLength(Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object v0

    .line 73
    sget-object v2, Lcom/aliyun/oss/internal/CORSOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketCORSRequest;->getBucketName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1, v1}, Lcom/aliyun/oss/internal/CORSOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
