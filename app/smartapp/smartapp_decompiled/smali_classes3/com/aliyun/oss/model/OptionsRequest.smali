.class public Lcom/aliyun/oss/model/OptionsRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "OptionsRequest.java"


# instance fields
.field private origin:Ljava/lang/String;

.field private requestHeaders:Ljava/lang/String;

.field private requestMethod:Lcom/aliyun/oss/HttpMethod;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getObjectName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/aliyun/oss/model/OptionsRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aliyun/oss/model/OptionsRequest;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/oss/model/OptionsRequest;->requestHeaders:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMethod()Lcom/aliyun/oss/HttpMethod;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/oss/model/OptionsRequest;->requestMethod:Lcom/aliyun/oss/HttpMethod;

    return-object v0
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/OptionsRequest;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aliyun/oss/model/OptionsRequest;->origin:Ljava/lang/String;

    return-void
.end method

.method public setRequestHeaders(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/oss/model/OptionsRequest;->requestHeaders:Ljava/lang/String;

    return-void
.end method

.method public setRequestMethod(Lcom/aliyun/oss/HttpMethod;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/aliyun/oss/model/OptionsRequest;->requestMethod:Lcom/aliyun/oss/HttpMethod;

    return-void
.end method

.method public withOrigin(Ljava/lang/String;)Lcom/aliyun/oss/model/OptionsRequest;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/OptionsRequest;->setOrigin(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRequestHeaders(Ljava/lang/String;)Lcom/aliyun/oss/model/OptionsRequest;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/OptionsRequest;->setRequestHeaders(Ljava/lang/String;)V

    return-object p0
.end method

.method public withRequestMethod(Lcom/aliyun/oss/HttpMethod;)Lcom/aliyun/oss/model/OptionsRequest;
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/OptionsRequest;->setRequestMethod(Lcom/aliyun/oss/HttpMethod;)V

    return-object p0
.end method
