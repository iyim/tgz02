.class public Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;
.super Ljava/lang/Object;
.source "DefaultCredentialProvider.java"

# interfaces
.implements Lcom/aliyun/oss/common/auth/CredentialsProvider;


# instance fields
.field private volatile creds:Lcom/aliyun/oss/common/auth/Credentials;


# direct methods
.method public constructor <init>(Lcom/aliyun/oss/common/auth/Credentials;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1, p2}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->checkCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lcom/aliyun/oss/common/auth/DefaultCredentials;

    invoke-direct {v0, p1, p2, p3}, Lcom/aliyun/oss/common/auth/DefaultCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V

    return-void
.end method

.method private static checkCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance p0, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string p1, "Secret access key should not be null or empty."

    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_1
    new-instance p0, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string p1, "Access key id should not be null or empty."

    invoke-direct {p0, p1}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getCredentials()Lcom/aliyun/oss/common/auth/Credentials;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->creds:Lcom/aliyun/oss/common/auth/Credentials;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->creds:Lcom/aliyun/oss/common/auth/Credentials;

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string v1, "Invalid credentials"

    invoke-direct {v0, v1}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 48
    :try_start_0
    invoke-interface {p1}, Lcom/aliyun/oss/common/auth/Credentials;->getAccessKeyId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/aliyun/oss/common/auth/Credentials;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->checkCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/aliyun/oss/common/auth/DefaultCredentialProvider;->creds:Lcom/aliyun/oss/common/auth/Credentials;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 45
    :cond_0
    :try_start_1
    new-instance p1, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;

    const-string v0, "creds should not be null."

    invoke-direct {p1, v0}, Lcom/aliyun/oss/common/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
