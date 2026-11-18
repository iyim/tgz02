.class public Lcom/aliyun/ccp/api/response/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/BaseResponse;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/BaseResponse;->requestId:Ljava/lang/String;

    return-void
.end method
