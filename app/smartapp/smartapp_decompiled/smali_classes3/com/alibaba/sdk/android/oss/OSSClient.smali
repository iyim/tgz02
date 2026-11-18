.class public Lcom/alibaba/sdk/android/oss/OSSClient;
.super Ljava/lang/Object;
.source "OSSClient.java"

# interfaces
.implements Lcom/alibaba/sdk/android/oss/OSS;


# instance fields
.field private mOss:Lcom/alibaba/sdk/android/oss/OSS;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/alibaba/sdk/android/oss/OSSImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/OSSImpl;-><init>(Landroid/content/Context;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/alibaba/sdk/android/oss/OSSImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/OSSImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    return-void
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V

    return-void
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public asyncAbortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncAbortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncCopyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncCopyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncCreateBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncCreateBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncDeleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncDeleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncDeleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncDeleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncDeleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncDeleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncGetBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncGetObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncImagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;",
            ">;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncImagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncInitMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncInitMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncListBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncListMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;",
            ">;"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncListParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncListParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncMultipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncMultipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncSequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncSequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncTriggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncTriggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public asyncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->asyncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    return-object p1
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->deleteMultipleObject(Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteMultipleObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    move-result-object p1

    return-object p1
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->getObjectACL(Lcom/alibaba/sdk/android/oss/model/GetObjectACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectACLResult;

    move-result-object p1

    return-object p1
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public imagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;)Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->imagePersist(Lcom/alibaba/sdk/android/oss/model/ImagePersistRequest;)Lcom/alibaba/sdk/android/oss/model/ImagePersistResult;

    move-result-object p1

    return-object p1
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->listBuckets(Lcom/alibaba/sdk/android/oss/model/ListBucketsRequest;)Lcom/alibaba/sdk/android/oss/model/ListBucketsResult;

    move-result-object p1

    return-object p1
.end method

.method public listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;)Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->listMultipartUploads(Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsRequest;)Lcom/alibaba/sdk/android/oss/model/ListMultipartUploadsResult;

    move-result-object p1

    return-object p1
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    move-result-object p1

    return-object p1
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    move-result-object p1

    return-object p1
.end method

.method public multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public presignConstrainedObjectURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->presignConstrainedObjectURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/OSS;->presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public presignPublicObjectURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 406
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/OSS;->presignPublicObjectURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    move-result-object p1

    return-object p1
.end method

.method public resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object p1

    return-object p1
.end method

.method public triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;)Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->triggerCallback(Lcom/alibaba/sdk/android/oss/model/TriggerCallbackRequest;)Lcom/alibaba/sdk/android/oss/model/TriggerCallbackResult;

    move-result-object p1

    return-object p1
.end method

.method public updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    return-void
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->mOss:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v0, p1}, Lcom/alibaba/sdk/android/oss/OSS;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    move-result-object p1

    return-object p1
.end method
