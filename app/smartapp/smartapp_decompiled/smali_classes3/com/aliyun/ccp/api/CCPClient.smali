.class public Lcom/aliyun/ccp/api/CCPClient;
.super Ljava/lang/Object;
.source "CCPClient.java"


# static fields
.field private static final SDK_VERSION:Ljava/lang/String; = "1.1.1"


# instance fields
.field private mAuthOperation:Lcom/aliyun/ccp/api/operation/AuthOperation;

.field private mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

.field private mConsentOperation:Lcom/aliyun/ccp/api/operation/ConsentOperation;

.field private mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

.field private mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

.field private mTrashOperation:Lcom/aliyun/ccp/api/operation/TrashOperation;

.field private mUserOperation:Lcom/aliyun/ccp/api/operation/UserOperation;


# direct methods
.method public constructor <init>(Lcom/aliyun/ccp/api/ClientProfile;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    .line 45
    iget-object p1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {p1}, Lcom/aliyun/ccp/api/ClientProfile;->getTimeout()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/aliyun/ccp/OkHttpClientManager;->setTimeout(J)V

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-virtual {v0}, Lcom/aliyun/ccp/api/ClientProfile;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " JavaSDK/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.1.1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/aliyun/ccp/OkHttpClientManager;->setUserAgent(Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/aliyun/ccp/api/CCPClient;->initOperation()V

    return-void
.end method

.method private initOperation()V
    .locals 2

    .line 55
    new-instance v0, Lcom/aliyun/ccp/api/operation/AuthOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/AuthOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mAuthOperation:Lcom/aliyun/ccp/api/operation/AuthOperation;

    .line 56
    new-instance v0, Lcom/aliyun/ccp/api/operation/UserOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/UserOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mUserOperation:Lcom/aliyun/ccp/api/operation/UserOperation;

    .line 57
    new-instance v0, Lcom/aliyun/ccp/api/operation/DriveOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/DriveOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    .line 58
    new-instance v0, Lcom/aliyun/ccp/api/operation/FileOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/FileOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    .line 59
    new-instance v0, Lcom/aliyun/ccp/api/operation/ConsentOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/ConsentOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mConsentOperation:Lcom/aliyun/ccp/api/operation/ConsentOperation;

    .line 60
    new-instance v0, Lcom/aliyun/ccp/api/operation/TrashOperation;

    iget-object v1, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    invoke-direct {v0, v1}, Lcom/aliyun/ccp/api/operation/TrashOperation;-><init>(Lcom/aliyun/ccp/api/ClientProfile;)V

    iput-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mTrashOperation:Lcom/aliyun/ccp/api/operation/TrashOperation;

    return-void
.end method


# virtual methods
.method public completeFile(Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->completeFile(Lcom/aliyun/ccp/api/request/file/CompleteFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    move-result-object p1

    return-object p1
.end method

.method public copyFile(Lcom/aliyun/ccp/api/request/file/CopyFileRequest;)Lcom/aliyun/ccp/api/response/file/CopyFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->copyFile(Lcom/aliyun/ccp/api/request/file/CopyFileRequest;)Lcom/aliyun/ccp/api/response/file/CopyFileResponse;

    move-result-object p1

    return-object p1
.end method

.method public createDrive(Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;)Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->createDrive(Lcom/aliyun/ccp/api/request/drive/CreateDriveRequest;)Lcom/aliyun/ccp/api/response/drive/CreateDriveResponse;

    move-result-object p1

    return-object p1
.end method

.method public createFile(Lcom/aliyun/ccp/api/request/file/CreateFileRequest;)Lcom/aliyun/ccp/api/response/file/CreateFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->createFile(Lcom/aliyun/ccp/api/request/file/CreateFileRequest;)Lcom/aliyun/ccp/api/response/file/CreateFileResponse;

    move-result-object p1

    return-object p1
.end method

.method public deleteConsent(Lcom/aliyun/ccp/api/request/consent/DeleteConsentRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mConsentOperation:Lcom/aliyun/ccp/api/operation/ConsentOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/ConsentOperation;->deleteConsent(Lcom/aliyun/ccp/api/request/consent/DeleteConsentRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public deleteDrive(Lcom/aliyun/ccp/api/request/drive/DeleteDriveRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->deleteDrive(Lcom/aliyun/ccp/api/request/drive/DeleteDriveRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public deleteFile(Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->deleteFile(Lcom/aliyun/ccp/api/request/file/DeleteFileRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public deleteTrash(Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mTrashOperation:Lcom/aliyun/ccp/api/operation/TrashOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/TrashOperation;->deleteTrash(Lcom/aliyun/ccp/api/request/trash/DeleteTrashRequest;)Lcom/aliyun/ccp/api/response/BaseResponse;

    move-result-object p1

    return-object p1
.end method

.method public getClientProfile()Lcom/aliyun/ccp/api/ClientProfile;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mClientProfile:Lcom/aliyun/ccp/api/ClientProfile;

    return-object v0
.end method

.method public getDrive(Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;)Lcom/aliyun/ccp/api/response/drive/GetDriveResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->getDrive(Lcom/aliyun/ccp/api/request/drive/GetDriveRequest;)Lcom/aliyun/ccp/api/response/drive/GetDriveResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFile(Lcom/aliyun/ccp/api/request/file/GetFileRequest;)Lcom/aliyun/ccp/api/response/file/GetFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->getFile(Lcom/aliyun/ccp/api/request/file/GetFileRequest;)Lcom/aliyun/ccp/api/response/file/GetFileResponse;

    move-result-object p1

    return-object p1
.end method

.method public getFileSignedUrl(Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;)Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->getFileSignedUrl(Lcom/aliyun/ccp/api/request/file/GetFileSignedUrlRequest;)Lcom/aliyun/ccp/api/response/file/GetFileSignedUrlResponse;

    move-result-object p1

    return-object p1
.end method

.method public getToken(Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;)Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mAuthOperation:Lcom/aliyun/ccp/api/operation/AuthOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/AuthOperation;->getToken(Lcom/aliyun/ccp/api/request/auth/GetTokenRequest;)Lcom/aliyun/ccp/api/response/auth/GetTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public getUploadStsToken(Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;)Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->getUploadStsToken(Lcom/aliyun/ccp/api/request/file/GetUploadStsTokenRequest;)Lcom/aliyun/ccp/api/response/file/GetUploadStsTokenResponse;

    move-result-object p1

    return-object p1
.end method

.method public getUser(Lcom/aliyun/ccp/api/request/user/GetUserRequest;)Lcom/aliyun/ccp/api/response/user/GetUserResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mUserOperation:Lcom/aliyun/ccp/api/operation/UserOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/UserOperation;->getUser(Lcom/aliyun/ccp/api/request/user/GetUserRequest;)Lcom/aliyun/ccp/api/response/user/GetUserResponse;

    move-result-object p1

    return-object p1
.end method

.method public listConsent(Lcom/aliyun/ccp/api/request/consent/ListConsentRequest;)Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mConsentOperation:Lcom/aliyun/ccp/api/operation/ConsentOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/ConsentOperation;->listConsent(Lcom/aliyun/ccp/api/request/consent/ListConsentRequest;)Lcom/aliyun/ccp/api/response/consent/ListConsentResponse;

    move-result-object p1

    return-object p1
.end method

.method public listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->listDrive(Lcom/aliyun/ccp/api/request/drive/ListDriveRequest;)Lcom/aliyun/ccp/api/response/drive/ListDriveResponse;

    move-result-object p1

    return-object p1
.end method

.method public listFile(Lcom/aliyun/ccp/api/request/file/ListFileRequest;)Lcom/aliyun/ccp/api/response/file/ListFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->listFile(Lcom/aliyun/ccp/api/request/file/ListFileRequest;)Lcom/aliyun/ccp/api/response/file/ListFileResponse;

    move-result-object p1

    return-object p1
.end method

.method public listTrash(Lcom/aliyun/ccp/api/request/trash/ListTrashRequest;)Lcom/aliyun/ccp/api/response/trash/ListTrashResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mTrashOperation:Lcom/aliyun/ccp/api/operation/TrashOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/TrashOperation;->listTrash(Lcom/aliyun/ccp/api/request/trash/ListTrashRequest;)Lcom/aliyun/ccp/api/response/trash/ListTrashResponse;

    move-result-object p1

    return-object p1
.end method

.method public listUser(Lcom/aliyun/ccp/api/request/user/ListUserRequest;)Lcom/aliyun/ccp/api/response/user/ListUserResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mUserOperation:Lcom/aliyun/ccp/api/operation/UserOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/UserOperation;->listUser(Lcom/aliyun/ccp/api/request/user/ListUserRequest;)Lcom/aliyun/ccp/api/response/user/ListUserResponse;

    move-result-object p1

    return-object p1
.end method

.method public moveFile(Lcom/aliyun/ccp/api/request/file/MoveFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->moveFile(Lcom/aliyun/ccp/api/request/file/MoveFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    move-result-object p1

    return-object p1
.end method

.method public searchFile(Lcom/aliyun/ccp/api/request/file/SearchFileRequest;)Lcom/aliyun/ccp/api/response/file/SearchFileResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->searchFile(Lcom/aliyun/ccp/api/request/file/SearchFileRequest;)Lcom/aliyun/ccp/api/response/file/SearchFileResponse;

    move-result-object p1

    return-object p1
.end method

.method public unTrash(Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mTrashOperation:Lcom/aliyun/ccp/api/operation/TrashOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/TrashOperation;->unTrash(Lcom/aliyun/ccp/api/request/trash/UnTrashRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    move-result-object p1

    return-object p1
.end method

.method public updateDrive(Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mDriveOperation:Lcom/aliyun/ccp/api/operation/DriveOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/DriveOperation;->updateDrive(Lcom/aliyun/ccp/api/request/drive/UpdateDriveRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    move-result-object p1

    return-object p1
.end method

.method public updateFile(Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/ccp/api/exception/ServerException;,
            Lcom/aliyun/ccp/api/exception/ClientException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/aliyun/ccp/api/CCPClient;->mFileOperation:Lcom/aliyun/ccp/api/operation/FileOperation;

    invoke-virtual {v0, p1}, Lcom/aliyun/ccp/api/operation/FileOperation;->updateFile(Lcom/aliyun/ccp/api/request/file/UpdateFileRequest;)Lcom/aliyun/ccp/api/response/MessageResponse;

    move-result-object p1

    return-object p1
.end method
