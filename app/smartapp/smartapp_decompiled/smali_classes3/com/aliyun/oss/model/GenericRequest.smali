.class public Lcom/aliyun/oss/model/GenericRequest;
.super Lcom/aliyun/oss/model/WebServiceRequest;
.source "GenericRequest.java"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/aliyun/oss/model/WebServiceRequest;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericRequest;->bucketName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/aliyun/oss/model/GenericRequest;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/GenericRequest;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericRequest;->bucketName:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aliyun/oss/model/GenericRequest;->key:Ljava/lang/String;

    return-void
.end method

.method public withBucketName(Ljava/lang/String;)Lcom/aliyun/oss/model/GenericRequest;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;->setBucketName(Ljava/lang/String;)V

    return-object p0
.end method

.method public withKey(Ljava/lang/String;)Lcom/aliyun/oss/model/GenericRequest;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;->setKey(Ljava/lang/String;)V

    return-object p0
.end method
