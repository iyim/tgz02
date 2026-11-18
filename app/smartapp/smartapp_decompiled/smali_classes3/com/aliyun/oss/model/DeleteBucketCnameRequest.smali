.class public Lcom/aliyun/oss/model/DeleteBucketCnameRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "DeleteBucketCnameRequest.java"


# instance fields
.field private domain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;->domain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;->domain:Ljava/lang/String;

    return-void
.end method

.method public withDomain(Ljava/lang/String;)Lcom/aliyun/oss/model/DeleteBucketCnameRequest;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/DeleteBucketCnameRequest;->setDomain(Ljava/lang/String;)V

    return-object p0
.end method
