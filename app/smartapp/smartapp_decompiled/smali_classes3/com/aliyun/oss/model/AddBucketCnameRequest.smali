.class public Lcom/aliyun/oss/model/AddBucketCnameRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "AddBucketCnameRequest.java"


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


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketCnameRequest;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketCnameRequest;->domain:Ljava/lang/String;

    return-void
.end method

.method public withDomain(Ljava/lang/String;)Lcom/aliyun/oss/model/AddBucketCnameRequest;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/AddBucketCnameRequest;->setDomain(Ljava/lang/String;)V

    return-object p0
.end method
