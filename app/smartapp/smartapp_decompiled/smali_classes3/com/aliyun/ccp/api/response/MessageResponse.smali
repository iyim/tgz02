.class public Lcom/aliyun/ccp/api/response/MessageResponse;
.super Lcom/aliyun/ccp/api/response/BaseResponse;
.source "MessageResponse.java"


# instance fields
.field private code:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "code"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/aliyun/ccp/api/response/BaseResponse;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/MessageResponse;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/aliyun/ccp/api/response/MessageResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/MessageResponse;->code:Ljava/lang/String;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/aliyun/ccp/api/response/MessageResponse;->message:Ljava/lang/String;

    return-void
.end method
