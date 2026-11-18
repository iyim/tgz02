.class public Lcom/aliyun/ccp/api/operation/FileOperation;
.super Lcom/aliyun/ccp/api/operation/BaseOperation;
.source "FileOperation.java"


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/aliyun/ccp/api/operation/BaseOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public completeFile(Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/complete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/MessageResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/MessageResponse;

    return-object p1
.end method

.method public copyFile(Lcom/aliyun/ccp/api/request/file/CopyFileRequest;)Lcom/aliyun/ccp/api/response/file/CopyFileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/CopyFileResponse;

    return-object p1
.end method

.method public createFile(Lcom/aliyun/ccp/api/request/file/CreateFileRequest;)Lcom/aliyun/ccp/api/response/file/CreateFileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/create"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/CreateFileResponse;

    return-object p1
.end method

.method public deleteFile(Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/BaseResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Lcom/aliyun/ccp/api/request/file/GetFileRequest;)Lcom/aliyun/ccp/api/response/file/GetFileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/GetFileResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/GetFileResponse;

    return-object p1
.end method

.method public getFileSignedUrl(Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;)Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/get_signed_url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    return-object p1
.end method

.method public getUploadStsToken(Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;)Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/get_upload_sts_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;

    return-object p1
.end method

.method public listFile(Lcom/aliyun/ccp/api/request/file/ListFileRequest;)Lcom/aliyun/ccp/api/response/file/ListFileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/ListFileResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/ListFileResponse;

    return-object p1
.end method

.method public moveFile(Lcom/aliyun/ccp/api/request/file/MoveFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/move"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/MessageResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/MessageResponse;

    return-object p1
.end method

.method public searchFile(Lcom/aliyun/ccp/api/request/file/SearchFileRequest;)Lcom/aliyun/ccp/api/response/file/SearchFileResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/file/SearchFileResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/file/SearchFileResponse;

    return-object p1
.end method

.method public updateFile(Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/aliyun/ccp/api/operation/FileOperation;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v1}, Lcom/aliyun/ccp/api/ClientProfile;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/file/update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/aliyun/ccp/api/response/MessageResponse;

    invoke-virtual {p0, p1, v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;->request(Lcom/aliyun/ccp/api/request/BaseRequest;Ljava/lang/String;Ljava/lang/Class;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    check-cast p1, Lcom/aliyun/ccp/api/response/MessageResponse;

    return-object p1
.end method
