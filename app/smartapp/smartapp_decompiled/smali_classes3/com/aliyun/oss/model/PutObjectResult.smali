.class public Lcom/aliyun/oss/model/PutObjectResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "PutObjectResult.java"

# interfaces
.implements Lcom/aliyun/oss/model/CallbackResult;


# instance fields
.field private callbackResponseBody:Ljava/io/InputStream;

.field private eTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCallbackResponseBody()Ljava/io/InputStream;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectResult;->callbackResponseBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/model/PutObjectResult;->eTag:Ljava/lang/String;

    return-object v0
.end method

.method public setCallbackResponseBody(Ljava/io/InputStream;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectResult;->callbackResponseBody:Ljava/io/InputStream;

    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/aliyun/oss/model/PutObjectResult;->eTag:Ljava/lang/String;

    return-void
.end method
