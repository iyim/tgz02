.class public Lcom/aliyun/ccp/api/ClientProfile;
.super Ljava/lang/Object;
.source "ClientProfile.java"


# instance fields
.field private clientId:Ljava/lang/String;

.field private domainId:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private secret:Ljava/lang/String;

.field private timeout:J

.field private tokenData:Lcom/aliyun/ccp/api/model/TokenData;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/model/TokenData;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://ccp.aliyuncs.com"

    .line 7
    iput-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->host:Ljava/lang/String;

    const-wide/16 v0, 0x3c

    .line 13
    iput-wide v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->timeout:J

    .line 31
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->tokenData:Lcom/aliyun/ccp/api/model/TokenData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "http://ccp.aliyuncs.com"

    .line 7
    iput-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->host:Ljava/lang/String;

    const-wide/16 v0, 0x3c

    .line 13
    iput-wide v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->timeout:J

    .line 41
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->domainId:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/aliyun/ccp/api/ClientProfile;->clientId:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/aliyun/ccp/api/ClientProfile;->secret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getDomainId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->domainId:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->timeout:J

    return-wide v0
.end method

.method public getTokenData()Lcom/aliyun/ccp/api/model/TokenData;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->tokenData:Lcom/aliyun/ccp/api/model/TokenData;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/aliyun/ccp/api/ClientProfile;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setDomainId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->domainId:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->host:Ljava/lang/String;

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->secret:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->timeout:J

    return-void
.end method

.method public setTokenData(Lcom/aliyun/ccp/api/model/TokenData;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->tokenData:Lcom/aliyun/ccp/api/model/TokenData;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/aliyun/ccp/api/ClientProfile;->userAgent:Ljava/lang/String;

    return-void
.end method
