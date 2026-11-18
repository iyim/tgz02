.class public Lcom/aliyun/oss/common/auth/DefaultCredentials;
.super Ljava/lang/Object;
.source "DefaultCredentials.java"

# interfaces
.implements Lcom/aliyun/oss/common/auth/Credentials;


# instance fields
.field private final accessKeyId:Ljava/lang/String;

.field private final secretAccessKey:Ljava/lang/String;

.field private final securityToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/common/auth/DefaultCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, ""

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->accessKeyId:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->secretAccessKey:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->securityToken:Ljava/lang/String;

    return-void

    .line 40
    :cond_0
    new-instance p1, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string p2, "Secret access key should not be null or empty."

    invoke-direct {p1, p2}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_1
    new-instance p1, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string p2, "Access key id should not be null or empty."

    invoke-direct {p1, p2}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAccessKeyId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->accessKeyId:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretAccessKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->secretAccessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->securityToken:Ljava/lang/String;

    return-object v0
.end method

.method public useSecurityToken()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentials;->securityToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
