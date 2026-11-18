.class public Lcom/aliyun/oss/internal/LiveChannelOperation;
.super Lcom/aliyun/oss/internal/OSSOperation;
.source "LiveChannelOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/internal/OSSOperation;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;Lcom/aliyun/oss/common/auth/CredentialsProvider;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static addRequestRequiredHeaders(Ljava/util/Map;[B)V
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

    .line 428
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/BinaryUtil;->calculateMd5([B)[B

    move-result-object p1

    .line 431
    invoke-static {p1}, Lcom/aliyun/oss/common/utils/BinaryUtil;->toBase64String([B)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-MD5"

    .line 432
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static populateListLiveChannelsRequestParameters(Lcom/aliyun/oss/model/ListLiveChannelsRequest;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/ListLiveChannelsRequest;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prefix"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 419
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getMarker()Ljava/lang/String;

    move-result-object v0

    const-string v1, "marker"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 423
    invoke-virtual {p0}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getMaxKeys()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "max-keys"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public createLiveChannel(Lcom/aliyun/oss/model/CreateLiveChannelRequest;)Lcom/aliyun/oss/model/CreateLiveChannelResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "createLiveChannelRequest"

    .line 80
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {p1}, Lcom/aliyun/oss/model/CreateLiveChannelRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 85
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "liveChannelName"

    .line 87
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "live"

    const/4 v2, 0x0

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createLiveChannelRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;

    invoke-virtual {v1, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;->marshall(Lcom/aliyun/oss/model/CreateLiveChannelRequest;)[B

    move-result-object v1

    .line 94
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 95
    invoke-static {v2, v1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->addRequestRequiredHeaders(Ljava/util/Map;[B)V

    .line 97
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v6, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

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

    .line 109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v0, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/OSSCallbackErrorResponseHandler;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->createLiveChannelResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/CreateLiveChannelResult;

    return-object p1
.end method

.method public deleteLiveChannel(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "liveChannelGenericRequest"

    .line 205
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 210
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v2, "liveChannelName"

    .line 212
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "live"

    const/4 v4, 0x0

    .line 216
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->DELETE:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 227
    sget-object v2, Lcom/aliyun/oss/internal/LiveChannelOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public generateRtmpUri(Lcom/aliyun/oss/model/GenerateRtmpUriRequest;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "request"

    .line 342
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateRtmpUriRequest;->getExpires()Ljava/lang/Long;

    move-result-object p1

    const-string v3, "bucketName"

    .line 349
    invoke-static {v0, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v3, "liveChannelName"

    .line 351
    invoke-static {v1, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    const-string v3, "playlistName"

    .line 353
    invoke-static {v2, v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "expires"

    .line 354
    invoke-static {p1, v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lcom/aliyun/oss/internal/LiveChannelOperation;->credsProvider:Lcom/aliyun/oss/common/auth/CredentialsProvider;

    invoke-interface {v4}, Lcom/aliyun/oss/common/auth/CredentialsProvider;->getCredentials()Lcom/aliyun/oss/common/auth/Credentials;

    move-result-object v4

    .line 357
    invoke-interface {v4}, Lcom/aliyun/oss/common/auth/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v5

    .line 358
    invoke-interface {v4}, Lcom/aliyun/oss/common/auth/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v6

    .line 359
    invoke-interface {v4}, Lcom/aliyun/oss/common/auth/Credentials;->useSecurityToken()Z

    move-result v7

    .line 362
    new-instance v8, Lcom/aliyun/oss/common/comm/RequestMessage;

    invoke-direct {v8}, Lcom/aliyun/oss/common/comm/RequestMessage;-><init>()V

    .line 363
    iget-object v9, p0, Lcom/aliyun/oss/internal/LiveChannelOperation;->client:Lcom/aliyun/oss/common/comm/ServiceClient;

    invoke-virtual {v9}, Lcom/aliyun/oss/common/comm/ServiceClient;->getClientConfiguration()Lcom/aliyun/oss/ClientConfiguration;

    move-result-object v9

    .line 364
    iget-object v10, p0, Lcom/aliyun/oss/internal/LiveChannelOperation;->endpoint:Ljava/net/URI;

    invoke-static {v10, v0, v9}, Lcom/aliyun/oss/internal/OSSUtils;->determineFinalEndpoint(Ljava/net/URI;Ljava/lang/String;Lcom/aliyun/oss/ClientConfiguration;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/aliyun/oss/common/comm/RequestMessage;->setEndpoint(Ljava/net/URI;)V

    .line 367
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Date"

    invoke-virtual {v8, v10, v9}, Lcom/aliyun/oss/common/comm/RequestMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-virtual {v8, v3, v2}, Lcom/aliyun/oss/common/comm/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_0

    .line 373
    invoke-interface {v4}, Lcom/aliyun/oss/common/auth/Credentials;->getSecurityToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "security-token"

    invoke-virtual {v8, v3, v2}, Lcom/aliyun/oss/common/comm/RequestMessage;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v8, v2}, Lcom/aliyun/oss/internal/SignUtils;->buildRtmpCanonicalString(Ljava/lang/String;Lcom/aliyun/oss/common/comm/RequestMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-static {}, Lcom/aliyun/oss/common/auth/ServiceSignature;->create()Lcom/aliyun/oss/common/auth/ServiceSignature;

    move-result-object v2

    invoke-virtual {v2, v6, v0}, Lcom/aliyun/oss/common/auth/ServiceSignature;->computeSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 384
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "Expires"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "OSSAccessKeyId"

    .line 385
    invoke-interface {v2, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Signature"

    .line 386
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {v8}, Lcom/aliyun/oss/common/comm/RequestMessage;->getParameters()Ljava/util/Map;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p1, "utf-8"

    .line 389
    invoke-static {v2, p1}, Lcom/aliyun/oss/common/utils/HttpUtil;->paramToQueryString(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 392
    invoke-virtual {v8}, Lcom/aliyun/oss/common/comm/RequestMessage;->getEndpoint()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "live/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    .line 395
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "rtmp://"

    if-eqz v4, :cond_1

    .line 396
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "https://"

    .line 397
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 398
    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 406
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateVodPlaylist(Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "generateVodPlaylistRequest"

    .line 303
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->getPlaylistName()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->getStratTime()Ljava/lang/Long;

    move-result-object v3

    .line 309
    invoke-virtual {p1}, Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;->getEndTime()Ljava/lang/Long;

    move-result-object v4

    const-string v5, "bucketName"

    .line 311
    invoke-static {v0, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v5, "liveChannelName"

    .line 313
    invoke-static {v1, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    const-string v5, "playlistName"

    .line 315
    invoke-static {v2, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "stratTime"

    .line 316
    invoke-static {v3, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "endTime"

    .line 317
    invoke-static {v4, v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v7, "vod"

    const/4 v8, 0x0

    .line 320
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "startTime"

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    new-instance v2, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/HttpMethod;->POST:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

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

    .line 336
    sget-object v2, Lcom/aliyun/oss/internal/LiveChannelOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public getLiveChannelHistory(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/LiveChannelGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "liveChannelGenericRequest"

    .line 274
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 277
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 279
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "liveChannelName"

    .line 281
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "live"

    const/4 v2, 0x0

    .line 285
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "comp"

    const-string v2, "history"

    .line 286
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

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

    .line 297
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelHistoryResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getLiveChannelInfo(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "liveChannelGenericRequest"

    .line 148
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 153
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "liveChannelName"

    .line 155
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "live"

    const/4 v2, 0x0

    .line 159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

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

    .line 170
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/LiveChannelInfo;

    return-object p1
.end method

.method public getLiveChannelStat(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelStat;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "liveChannelGenericRequest"

    .line 176
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LiveChannelGenericRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v5

    const-string v0, "bucketName"

    .line 181
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v0, "liveChannelName"

    .line 183
    invoke-static {v5, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {v5}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "live"

    const/4 v2, 0x0

    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "comp"

    const-string v2, "stat"

    .line 188
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

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

    .line 199
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelStatResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/LiveChannelStat;

    return-object p1
.end method

.method public listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "listObjectsRequest"

    .line 250
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p1}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "bucketName"

    .line 253
    invoke-static {v4, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "live"

    const/4 v2, 0x0

    .line 257
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p1, v0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->populateListLiveChannelsRequestParameters(Lcom/aliyun/oss/model/ListLiveChannelsRequest;Ljava/util/Map;)V

    .line 260
    new-instance v1, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

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

    .line 268
    sget-object v3, Lcom/aliyun/oss/internal/ResponseParsers;->listLiveChannelsReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/aliyun/oss/model/LiveChannelListing;

    return-object p1
.end method

.method public listLiveChannels(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .line 234
    new-instance v0, Lcom/aliyun/oss/model/ListLiveChannelsRequest;

    invoke-direct {v0, p1}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/aliyun/oss/model/LiveChannelListing;->getLiveChannels()Ljava/util/List;

    move-result-object v1

    .line 236
    :goto_0
    invoke-virtual {v0}, Lcom/aliyun/oss/model/LiveChannelListing;->isTruncated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    new-instance v2, Lcom/aliyun/oss/model/ListLiveChannelsRequest;

    invoke-virtual {v0}, Lcom/aliyun/oss/model/LiveChannelListing;->getNextMarker()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3}, Lcom/aliyun/oss/model/ListLiveChannelsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/aliyun/oss/internal/LiveChannelOperation;->listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/aliyun/oss/model/LiveChannelListing;->getLiveChannels()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public setLiveChannelStatus(Lcom/aliyun/oss/model/SetLiveChannelRequest;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    const-string v0, "setLiveChannelRequest"

    .line 118
    invoke-static {p1, v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetLiveChannelRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetLiveChannelRequest;->getLiveChannelName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bucketName"

    .line 123
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Lcom/aliyun/oss/internal/OSSUtils;->ensureBucketNameValid(Ljava/lang/String;)V

    const-string v2, "liveChannelName"

    .line 125
    invoke-static {v1, v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->assertParameterNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->ensureLiveChannelNameValid(Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "live"

    const/4 v4, 0x0

    .line 129
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetLiveChannelRequest;->getLiveChannelStatus()Lcom/aliyun/oss/model/LiveChannelStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/aliyun/oss/model/LiveChannelStatus;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "status"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v3, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getInnerClient()Lcom/aliyun/oss/common/comm/ServiceClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;-><init>(Lcom/aliyun/oss/common/comm/ServiceClient;)V

    invoke-virtual {p0}, Lcom/aliyun/oss/internal/LiveChannelOperation;->getEndpoint()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setEndpoint(Ljava/net/URI;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    sget-object v4, Lcom/aliyun/oss/HttpMethod;->PUT:Lcom/aliyun/oss/HttpMethod;

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setBucket(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setKey(Ljava/lang/String;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setParameters(Ljava/util/Map;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->setOriginalRequest(Lcom/aliyun/oss/model/WebServiceRequest;)Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aliyun/oss/internal/OSSRequestMessageBuilder;->build()Lcom/aliyun/oss/common/comm/RequestMessage;

    move-result-object p1

    .line 142
    sget-object v2, Lcom/aliyun/oss/internal/LiveChannelOperation;->emptyResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/aliyun/oss/internal/LiveChannelOperation;->doOperation(Lcom/aliyun/oss/common/comm/RequestMessage;Lcom/aliyun/oss/common/parser/ResponseParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
