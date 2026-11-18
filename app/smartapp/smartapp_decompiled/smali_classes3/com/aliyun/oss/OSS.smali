.class public interface abstract Lcom/aliyun/oss/OSS;
.super Ljava/lang/Object;
.source "OSS.java"


# virtual methods
.method public abstract abortMultipartUpload(Lcom/aliyun/oss/model/AbortMultipartUploadRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract addBucketCname(Lcom/aliyun/oss/model/AddBucketCnameRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract addBucketReplication(Lcom/aliyun/oss/model/AddBucketReplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract appendObject(Lcom/aliyun/oss/model/AppendObjectRequest;)Lcom/aliyun/oss/model/AppendObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract calculatePostSignature(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract completeMultipartUpload(Lcom/aliyun/oss/model/CompleteMultipartUploadRequest;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract copyObject(Lcom/aliyun/oss/model/CopyObjectRequest;)Lcom/aliyun/oss/model/CopyObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/CopyObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createBucket(Lcom/aliyun/oss/model/CreateBucketRequest;)Lcom/aliyun/oss/model/Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createBucket(Ljava/lang/String;)Lcom/aliyun/oss/model/Bucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createLiveChannel(Lcom/aliyun/oss/model/CreateLiveChannelRequest;)Lcom/aliyun/oss/model/CreateLiveChannelResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createSymlink(Lcom/aliyun/oss/model/CreateSymlinkRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createSymlink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createUdf(Lcom/aliyun/oss/model/CreateUdfRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract createUdfApplication(Lcom/aliyun/oss/model/CreateUdfApplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucket(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucket(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketCORSRules(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketCname(Lcom/aliyun/oss/model/DeleteBucketCnameRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketCname(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketImage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketLifecycle(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketLogging(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketReplication(Lcom/aliyun/oss/model/DeleteBucketReplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketReplication(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketTagging(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteBucketWebsite(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteImageStyle(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteLiveChannel(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteLiveChannel(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteObject(Lcom/aliyun/oss/model/GenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteObjects(Lcom/aliyun/oss/model/DeleteObjectsRequest;)Lcom/aliyun/oss/model/DeleteObjectsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteUdf(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteUdfApplication(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract deleteUdfImage(Lcom/aliyun/oss/model/UdfGenericRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract doesBucketExist(Lcom/aliyun/oss/model/GenericRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract doesBucketExist(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract doesObjectExist(Lcom/aliyun/oss/model/GenericRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract doesObjectExist(Lcom/aliyun/oss/model/HeadObjectRequest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract doesObjectExist(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract downloadFile(Lcom/aliyun/oss/model/DownloadFileRequest;)Lcom/aliyun/oss/model/DownloadFileResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract generatePostPolicy(Ljava/util/Date;Lcom/aliyun/oss/model/PolicyConditions;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generatePresignedUrl(Lcom/aliyun/oss/model/GeneratePresignedUrlRequest;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generatePresignedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Lcom/aliyun/oss/HttpMethod;)Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generateRtmpUri(Lcom/aliyun/oss/model/GenerateRtmpUriRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generateRtmpUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generateVodPlaylist(Lcom/aliyun/oss/model/GenerateVodPlaylistRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract generateVodPlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketAcl(Ljava/lang/String;)Lcom/aliyun/oss/model/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketCORSRules(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketCORSRules(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketCname(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/CnameConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketCname(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/CnameConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketImage(Ljava/lang/String;)Lcom/aliyun/oss/model/GetBucketImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketImage(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetBucketImageResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketInfo(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketInfo(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLifecycle(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLifecycle(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLocation(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLogging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketLogging(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketLoggingResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketProcess(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketProcess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketProcess(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketProcess;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReferer(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketReferer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReferer(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketReferer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplication(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplication(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplicationLocation(Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplicationLocation(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplicationProgress(Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;)Lcom/aliyun/oss/model/BucketReplicationProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketReplicationProgress(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/BucketReplicationProgress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketStat(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketStat(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketStorageCapacity(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/UserQos;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketStorageCapacity(Ljava/lang/String;)Lcom/aliyun/oss/model/UserQos;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketTagging(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/TagSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketTagging(Ljava/lang/String;)Lcom/aliyun/oss/model/TagSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketWebsite(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/BucketWebsiteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getBucketWebsite(Ljava/lang/String;)Lcom/aliyun/oss/model/BucketWebsiteResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getImageStyle(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/GetImageStyleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getImageStyle(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/GetImageStyleResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelHistory(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/LiveChannelGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelHistory(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelInfo(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelStat(Lcom/aliyun/oss/model/LiveChannelGenericRequest;)Lcom/aliyun/oss/model/LiveChannelStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getLiveChannelStat(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelStat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObject(Lcom/aliyun/oss/model/GetObjectRequest;)Lcom/aliyun/oss/model/OSSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/OSSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObject(Ljava/net/URL;Ljava/util/Map;)Lcom/aliyun/oss/model/OSSObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/OSSObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObject(Lcom/aliyun/oss/model/GetObjectRequest;Ljava/io/File;)Lcom/aliyun/oss/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObjectAcl(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectAcl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectAcl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObjectMetadata(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getObjectMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getSimplifiedObjectMeta(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getSimplifiedObjectMeta(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getSymlink(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/OSSSymlink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getSymlink(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/OSSSymlink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getUdfApplicationInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getUdfApplicationLog(Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;)Lcom/aliyun/oss/model/UdfApplicationLog;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getUdfImageInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aliyun/oss/model/UdfGenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract getUdfInfo(Lcom/aliyun/oss/model/UdfGenericRequest;)Lcom/aliyun/oss/model/UdfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract initiateMultipartUpload(Lcom/aliyun/oss/model/InitiateMultipartUploadRequest;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listBuckets(Lcom/aliyun/oss/model/ListBucketsRequest;)Lcom/aliyun/oss/model/BucketList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listBuckets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lcom/aliyun/oss/model/BucketList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listBuckets()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Bucket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listImageStyle(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Style;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listImageStyle(Ljava/lang/String;Lcom/aliyun/oss/model/GenericRequest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/aliyun/oss/model/GenericRequest;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Style;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listLiveChannels(Lcom/aliyun/oss/model/ListLiveChannelsRequest;)Lcom/aliyun/oss/model/LiveChannelListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listLiveChannels(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listMultipartUploads(Lcom/aliyun/oss/model/ListMultipartUploadsRequest;)Lcom/aliyun/oss/model/MultipartUploadListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listObjects(Lcom/aliyun/oss/model/ListObjectsRequest;)Lcom/aliyun/oss/model/ObjectListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listObjects(Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listObjects(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listParts(Lcom/aliyun/oss/model/ListPartsRequest;)Lcom/aliyun/oss/model/PartListing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listUdfApplications()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract listUdfs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract optionsObject(Lcom/aliyun/oss/model/OptionsRequest;)Lcom/aliyun/oss/common/comm/ResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract processObject(Lcom/aliyun/oss/model/ProcessObjectRequest;)Lcom/aliyun/oss/model/GenericResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putBucketImage(Lcom/aliyun/oss/model/PutBucketImageRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putImageStyle(Lcom/aliyun/oss/model/PutImageStyleRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Lcom/aliyun/oss/model/PutObjectRequest;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/aliyun/oss/model/ObjectMetadata;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/net/URL;Ljava/io/InputStream;JLjava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract putObject(Ljava/net/URL;Ljava/lang/String;Ljava/util/Map;Z)Lcom/aliyun/oss/model/PutObjectResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/aliyun/oss/model/PutObjectResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract resizeUdfApplication(Lcom/aliyun/oss/model/ResizeUdfApplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract restoreObject(Lcom/aliyun/oss/model/GenericRequest;)Lcom/aliyun/oss/model/RestoreObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract restoreObject(Ljava/lang/String;Ljava/lang/String;)Lcom/aliyun/oss/model/RestoreObjectResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketAcl(Lcom/aliyun/oss/model/SetBucketAclRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketAcl(Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketCORS(Lcom/aliyun/oss/model/SetBucketCORSRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketLifecycle(Lcom/aliyun/oss/model/SetBucketLifecycleRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketLogging(Lcom/aliyun/oss/model/SetBucketLoggingRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketProcess(Lcom/aliyun/oss/model/SetBucketProcessRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketReferer(Lcom/aliyun/oss/model/SetBucketRefererRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketReferer(Ljava/lang/String;Lcom/aliyun/oss/model/BucketReferer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketStorageCapacity(Lcom/aliyun/oss/model/SetBucketStorageCapacityRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketStorageCapacity(Ljava/lang/String;Lcom/aliyun/oss/model/UserQos;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketTagging(Lcom/aliyun/oss/model/SetBucketTaggingRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketTagging(Ljava/lang/String;Lcom/aliyun/oss/model/TagSet;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketTagging(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setBucketWebsite(Lcom/aliyun/oss/model/SetBucketWebsiteRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setLiveChannelStatus(Lcom/aliyun/oss/model/SetLiveChannelRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setLiveChannelStatus(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/LiveChannelStatus;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setObjectAcl(Lcom/aliyun/oss/model/SetObjectAclRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract setObjectAcl(Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedAccessControlList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method

.method public abstract switchCredentials(Lcom/aliyun/oss/common/auth/Credentials;)V
.end method

.method public abstract upgradeUdfApplication(Lcom/aliyun/oss/model/UpgradeUdfApplicationRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Lcom/aliyun/oss/model/UploadFileRequest;)Lcom/aliyun/oss/model/UploadFileResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract uploadPart(Lcom/aliyun/oss/model/UploadPartRequest;)Lcom/aliyun/oss/model/UploadPartResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract uploadPartCopy(Lcom/aliyun/oss/model/UploadPartCopyRequest;)Lcom/aliyun/oss/model/UploadPartCopyResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method

.method public abstract uploadUdfImage(Lcom/aliyun/oss/model/UploadUdfImageRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/OSSException;,
            Lcom/aliyun/oss/ClientException;
        }
    .end annotation
.end method
