.class public Lcom/aliyun/ccp/api/model/TokenData;
.super Ljava/lang/Object;
.source "TokenData.java"


# instance fields
.field private accessToken:Ljava/lang/String;

.field protected expiresTime:Ljava/lang/String;

.field private refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/TokenData;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresTime()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/TokenData;->expiresTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/aliyun/ccp/api/model/TokenData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/TokenData;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setExpiresTime(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/TokenData;->expiresTime:Ljava/lang/String;

    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/aliyun/ccp/api/model/TokenData;->refreshToken:Ljava/lang/String;

    return-void
.end method
