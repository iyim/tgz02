.class public Lcom/aliyun/oss/model/RestoreObjectResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "RestoreObjectResult.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 29
    iput p1, p0, Lcom/aliyun/oss/model/RestoreObjectResult;->statusCode:I

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/aliyun/oss/model/RestoreObjectResult;->statusCode:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/aliyun/oss/model/RestoreObjectResult;->statusCode:I

    return-void
.end method
