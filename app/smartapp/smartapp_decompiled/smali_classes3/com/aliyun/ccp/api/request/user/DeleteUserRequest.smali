.class public Lcom/aliyun/ccp/api/request/user/DeleteUserRequest;
.super Lcom/aliyun/ccp/api/request/BaseRequest;
.source "DeleteUserRequest.java"


# instance fields
.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "user_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/aliyun/ccp/api/request/BaseRequest;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/aliyun/ccp/api/request/user/DeleteUserRequest;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/aliyun/ccp/api/request/user/DeleteUserRequest;->userId:Ljava/lang/String;

    return-void
.end method
