.class public Lcom/aliyun/oss/model/ProcessObjectRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "ProcessObjectRequest.java"


# instance fields
.field private process:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iput-object p3, p0, Lcom/aliyun/oss/model/ProcessObjectRequest;->process:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getProcess()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/aliyun/oss/model/ProcessObjectRequest;->process:Ljava/lang/String;

    return-object v0
.end method

.method public setProcess(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/aliyun/oss/model/ProcessObjectRequest;->process:Ljava/lang/String;

    return-void
.end method
