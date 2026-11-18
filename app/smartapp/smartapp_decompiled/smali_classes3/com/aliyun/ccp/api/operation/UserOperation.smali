.class public Lcom/aliyun/ccp/api/operation/UserOperation;
.super Lcom/aliyun/ccp/api/operation/BaseOperation;
.source "UserOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/aliyun/ccp/api/operation/BaseOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public deleteUser(Lcom/aliyun/ccp/api/request/user/DeleteUserRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/UserOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/BaseResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/UserOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Lcom/aliyun/ccp/api/request/user/GetUserRequest;)Lcom/aliyun/ccp/api/response/user/GetUserResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/UserOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/user/GetUserResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/UserOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/user/GetUserResponse;

    return-object p1
.end method

.method public listUser(Lcom/aliyun/ccp/api/request/user/ListUserRequest;)Lcom/aliyun/ccp/api/response/user/ListUserResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/UserOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/user/ListUserResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/UserOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/user/ListUserResponse;

    return-object p1
.end method

.method public updateUser(Lcom/aliyun/ccp/api/request/user/UpdateUserRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/UserOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/user/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/MessageResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/UserOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/MessageResponse;

    return-object p1
.end method
