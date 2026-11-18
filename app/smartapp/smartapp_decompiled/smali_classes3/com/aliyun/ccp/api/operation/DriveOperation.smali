.class public Lcom/aliyun/ccp/api/operation/DriveOperation;
.super Lcom/aliyun/ccp/api/operation/BaseOperation;
.source "DriveOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/aliyun/ccp/api/operation/BaseOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createDrive(Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;)Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/DriveOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/drive/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;

    return-object p1
.end method

.method public deleteDrive(Lcom/aliyun/ccp/api/request/drive/DeleteDriveRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/DriveOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/drive/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/BaseResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public getDrive(Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;)Lcom/aliyun/ccp/api/response/drive/GetDriveResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/DriveOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/drive/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/drive/GetDriveResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/drive/GetDriveResponse;

    return-object p1
.end method

.method public listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/DriveOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/drive/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    return-object p1
.end method

.method public updateDrive(Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/DriveOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/drive/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/MessageResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/MessageResponse;

    return-object p1
.end method
