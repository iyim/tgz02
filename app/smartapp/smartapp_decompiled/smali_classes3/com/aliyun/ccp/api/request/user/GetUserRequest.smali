.class public Lcom/aliyun/ccp/api/request/user/GetUserRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "GetUserRequest.java"


# instance fields
.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/user/GetUserRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/user/GetUserRequest;->userId:Ljava/lang/String;

    return-void
.end method
