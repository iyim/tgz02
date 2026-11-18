.class public final Lcom/aliyun/oss/internal/ResponseParsers;
.super Ljava/lang/Object;
.source "ResponseParsers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$UploadPartCopyResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationLogResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetObjectResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListObjectsReponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationLocationResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationProgressResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketTaggingResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketQosResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketStatResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketInfoResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCnameResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketWebsiteResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageProcessConfResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetImageStyleResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLocationResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketAclResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$GetBucketRefererResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListImageStyleResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$ListBucketResponseParser;,
        Lcom/aliyun/oss/internal/ResponseParsers$EmptyResponseParser;
    }
.end annotation


# static fields
.field public static final appendObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;

.field public static final completeMultipartUploadProcessResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;

.field public static final completeMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

.field public static final copyObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;

.field public static final createLiveChannelResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;

.field public static final deleteObjectsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;

.field public static final getBucketAclResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketAclResponseParser;

.field public static final getBucketCnameResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCnameResponseParser;

.field public static final getBucketCorsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;

.field public static final getBucketImageProcessConfResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageProcessConfResponseParser;

.field public static final getBucketImageResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageResponseParser;

.field public static final getBucketInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketInfoResponseParser;

.field public static final getBucketLifecycleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;

.field public static final getBucketLocationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLocationResponseParser;

.field public static final getBucketLoggingResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;

.field public static final getBucketQosResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketQosResponseParser;

.field public static final getBucketRefererResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketRefererResponseParser;

.field public static final getBucketReplicationLocationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationLocationResponseParser;

.field public static final getBucketReplicationProgressResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationProgressResponseParser;

.field public static final getBucketReplicationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationResponseParser;

.field public static final getBucketStatResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketStatResponseParser;

.field public static final getBucketTaggingResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketTaggingResponseParser;

.field public static final getBucketWebsiteResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketWebsiteResponseParser;

.field public static final getImageStyleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetImageStyleResponseParser;

.field public static final getLiveChannelHistoryResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;

.field public static final getLiveChannelInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;

.field public static final getLiveChannelStatResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;

.field public static final getObjectAclResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;

.field public static final getObjectMetadataResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;

.field public static final getSimplifiedObjectMetaResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;

.field public static final getSymbolicLinkResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;

.field public static final getUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;

.field public static final getUdfImageInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;

.field public static final getUdfInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;

.field public static final initiateMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;

.field public static final listBucketResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListBucketResponseParser;

.field public static final listImageStyleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListImageStyleResponseParser;

.field public static final listLiveChannelsReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;

.field public static final listMultipartUploadsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;

.field public static final listObjectsReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListObjectsReponseParser;

.field public static final listPartsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;

.field public static final listUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;

.field public static final listUdfResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;

.field public static final processObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;

.field public static final putObjectProcessReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;

.field public static final putObjectReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;

.field public static final restoreObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListBucketResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListBucketResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listBucketResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListBucketResponseParser;

    .line 121
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListImageStyleResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListImageStyleResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listImageStyleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListImageStyleResponseParser;

    .line 122
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketRefererResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketRefererResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketRefererResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketRefererResponseParser;

    .line 123
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketAclResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketAclResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketAclResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketAclResponseParser;

    .line 124
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLocationResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLocationResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketLocationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLocationResponseParser;

    .line 125
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketLoggingResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLoggingResponseParser;

    .line 126
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketWebsiteResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketWebsiteResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketWebsiteResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketWebsiteResponseParser;

    .line 127
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketLifecycleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketLifecycleResponseParser;

    .line 128
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketCorsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCorsResponseParser;

    .line 129
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketImageResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageResponseParser;

    .line 130
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetImageStyleResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetImageStyleResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getImageStyleResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetImageStyleResponseParser;

    .line 131
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageProcessConfResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageProcessConfResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketImageProcessConfResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketImageProcessConfResponseParser;

    .line 132
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketTaggingResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketTaggingResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketTaggingResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketTaggingResponseParser;

    .line 133
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketReplicationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationResponseParser;

    .line 134
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationProgressResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationProgressResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketReplicationProgressResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationProgressResponseParser;

    .line 135
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationLocationResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationLocationResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketReplicationLocationResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketReplicationLocationResponseParser;

    .line 136
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCnameResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCnameResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketCnameResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketCnameResponseParser;

    .line 137
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketInfoResponseParser;

    .line 138
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketStatResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketStatResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketStatResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketStatResponseParser;

    .line 139
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketQosResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetBucketQosResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getBucketQosResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetBucketQosResponseParser;

    .line 141
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListObjectsReponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListObjectsReponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listObjectsReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListObjectsReponseParser;

    .line 142
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectReponseParser;

    .line 143
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->putObjectProcessReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$PutObjectProcessReponseParser;

    .line 144
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->appendObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$AppendObjectResponseParser;

    .line 145
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getObjectMetadataResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectMetadataResponseParser;

    .line 146
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->copyObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CopyObjectResponseParser;

    .line 147
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->deleteObjectsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$DeleteObjectsResponseParser;

    .line 148
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getObjectAclResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetObjectAclResponseParser;

    .line 149
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getSimplifiedObjectMetaResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSimplifiedObjectMetaResponseParser;

    .line 150
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->restoreObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$RestoreObjectResponseParser;

    .line 151
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->processObjectResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ProcessObjectResponseParser;

    .line 153
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->completeMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadResponseParser;

    .line 154
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->completeMultipartUploadProcessResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CompleteMultipartUploadProcessResponseParser;

    .line 155
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->initiateMultipartUploadResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$InitiateMultipartUploadResponseParser;

    .line 156
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listMultipartUploadsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListMultipartUploadsResponseParser;

    .line 157
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listPartsResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListPartsResponseParser;

    .line 159
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->createLiveChannelResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$CreateLiveChannelResponseParser;

    .line 160
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelInfoResponseParser;

    .line 161
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelStatResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelStatResponseParser;

    .line 162
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getLiveChannelHistoryResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetLiveChannelHistoryResponseParser;

    .line 163
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listLiveChannelsReponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListLiveChannelsReponseParser;

    .line 165
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getSymbolicLinkResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetSymbolicLinkResponseParser;

    .line 167
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfInfoResponseParser;

    .line 168
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listUdfResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfResponseParser;

    .line 169
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfImageInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfImageInfoResponseParser;

    .line 170
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->getUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$GetUdfApplicationInfoResponseParser;

    .line 171
    new-instance v0, Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;

    invoke-direct {v0}, Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;-><init>()V

    sput-object v0, Lcom/aliyun/oss/internal/ResponseParsers;->listUdfApplicationInfoResponseParser:Lcom/aliyun/oss/internal/ResponseParsers$ListUdfApplicationInfoResponseParser;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1014
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 1015
    invoke-virtual {v0, p0}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object p0

    .line 1016
    invoke-virtual {p0}, Lorg/jdom/Document;->getRootElement()Lorg/jdom/Element;

    move-result-object p0

    return-object p0
.end method

.method public static parseBucketImage(Ljava/io/InputStream;)Lcom/aliyun/oss/model/GetBucketImageResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "True"

    .line 1788
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1789
    new-instance v1, Lcom/aliyun/oss/model/GetBucketImageResult;

    invoke-direct {v1}, Lcom/aliyun/oss/model/GetBucketImageResult;-><init>()V

    const-string v2, "Name"

    .line 1790
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetBucketName(Ljava/lang/String;)V

    const-string v2, "Default404Pic"

    .line 1791
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetDefault404Pic(Ljava/lang/String;)V

    const-string v2, "StyleDelimiters"

    .line 1792
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetStyleDelimiters(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 1793
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetStatus(Ljava/lang/String;)V

    const-string v2, "AutoSetContentType"

    .line 1794
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetIsAutoSetContentType(Z)V

    const-string v2, "OrigPicForbidden"

    .line 1795
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetIsForbidOrigPicAccess(Z)V

    const-string v2, "SetAttachName"

    .line 1796
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetIsSetAttachName(Z)V

    const-string v2, "UseStyleOnly"

    .line 1797
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetIsUseStyleOnly(Z)V

    const-string v2, "UseSrcFormat"

    .line 1798
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/GetBucketImageResult;->SetIsUseSrcFormat(Z)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1803
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1801
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseBucketLogging(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketLoggingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "LoggingEnabled"

    .line 1764
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1766
    new-instance v1, Lcom/aliyun/oss/model/BucketLoggingResult;

    invoke-direct {v1}, Lcom/aliyun/oss/model/BucketLoggingResult;-><init>()V

    .line 1767
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1768
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v3, "TargetBucket"

    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketLoggingResult;->setTargetBucket(Ljava/lang/String;)V

    .line 1770
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1771
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "TargetPrefix"

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/BucketLoggingResult;->setTargetPrefix(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 1778
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1776
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseBucketWebsite(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketWebsiteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "MirrorPassOriginalSlashes"

    const-string v1, "MirrorPassQueryString"

    const-string v2, "HttpRedirectCode"

    const-string v3, "Protocol"

    const-string v4, "HttpErrorCodeReturnedEquals"

    const-string v5, "RedirectType"

    const-string v6, "RoutingRules"

    const-string v7, "ErrorDocument"

    const-string v8, "IndexDocument"

    .line 1868
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1870
    new-instance v9, Lcom/aliyun/oss/model/BucketWebsiteResult;

    invoke-direct {v9}, Lcom/aliyun/oss/model/BucketWebsiteResult;-><init>()V

    .line 1871
    invoke-virtual {p0, v8}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1872
    invoke-virtual {p0, v8}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    const-string v10, "Suffix"

    invoke-virtual {v8, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/aliyun/oss/model/BucketWebsiteResult;->setIndexDocument(Ljava/lang/String;)V

    .line 1874
    :cond_0
    invoke-virtual {p0, v7}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1875
    invoke-virtual {p0, v7}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v7

    const-string v8, "Key"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/aliyun/oss/model/BucketWebsiteResult;->setErrorDocument(Ljava/lang/String;)V

    .line 1877
    :cond_1
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1878
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v6, "RoutingRule"

    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1879
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom/Element;

    .line 1880
    new-instance v7, Lcom/aliyun/oss/model/RoutingRule;

    invoke-direct {v7}, Lcom/aliyun/oss/model/RoutingRule;-><init>()V

    const-string v8, "RuleNumber"

    .line 1882
    invoke-virtual {v6, v8}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aliyun/oss/model/RoutingRule;->setNumber(Ljava/lang/Integer;)V

    const-string v8, "Condition"

    .line 1884
    invoke-virtual {v6, v8}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 1886
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getCondition()Lcom/aliyun/oss/model/RoutingRule$Condition;

    move-result-object v10

    const-string v11, "KeyPrefixEquals"

    invoke-virtual {v8, v11}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/RoutingRule$Condition;->setKeyPrefixEquals(Ljava/lang/String;)V

    .line 1887
    invoke-virtual {v8, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1888
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getCondition()Lcom/aliyun/oss/model/RoutingRule$Condition;

    move-result-object v10

    invoke-virtual {v8, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/aliyun/oss/model/RoutingRule$Condition;->setHttpErrorCodeReturnedEquals(Ljava/lang/Integer;)V

    :cond_2
    const-string v8, "Redirect"

    .line 1893
    invoke-virtual {v6, v8}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    .line 1894
    invoke-virtual {v6, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1895
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    invoke-virtual {v6, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/aliyun/oss/model/RoutingRule$RedirectType;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/RoutingRule$RedirectType;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setRedirectType(Lcom/aliyun/oss/model/RoutingRule$RedirectType;)V

    .line 1898
    :cond_3
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "HostName"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setHostName(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {v6, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1900
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    invoke-virtual {v6, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/aliyun/oss/model/RoutingRule$Protocol;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/RoutingRule$Protocol;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setProtocol(Lcom/aliyun/oss/model/RoutingRule$Protocol;)V

    .line 1903
    :cond_4
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "ReplaceKeyPrefixWith"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setReplaceKeyPrefixWith(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "ReplaceKeyWith"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setReplaceKeyWith(Ljava/lang/String;)V

    .line 1905
    invoke-virtual {v6, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1906
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    invoke-virtual {v6, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setHttpRedirectCode(Ljava/lang/Integer;)V

    .line 1909
    :cond_5
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "MirrorURL"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setMirrorURL(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "MirrorURLSlave"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setMirrorSecondaryURL(Ljava/lang/String;)V

    .line 1911
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    const-string v10, "MirrorURLProbe"

    invoke-virtual {v6, v10}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setMirrorProbeURL(Ljava/lang/String;)V

    .line 1912
    invoke-virtual {v6, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 1913
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    invoke-virtual {v6, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setPassQueryString(Ljava/lang/Boolean;)V

    .line 1916
    :cond_6
    invoke-virtual {v6, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1917
    invoke-virtual {v7}, Lcom/aliyun/oss/model/RoutingRule;->getRedirect()Lcom/aliyun/oss/model/RoutingRule$Redirect;

    move-result-object v8

    invoke-virtual {v6, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/aliyun/oss/model/RoutingRule$Redirect;->setPassOriginalSlashes(Ljava/lang/Boolean;)V

    .line 1921
    :cond_7
    invoke-virtual {v9, v7}, Lcom/aliyun/oss/model/BucketWebsiteResult;->AddRoutingRule(Lcom/aliyun/oss/model/RoutingRule;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_8
    return-object v9

    :catch_0
    move-exception p0

    .line 1929
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1927
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseCompleteMultipartUpload(Ljava/io/InputStream;)Lcom/aliyun/oss/model/CompleteMultipartUploadResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1741
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1743
    new-instance v0, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;-><init>()V

    const-string v1, "Bucket"

    .line 1744
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    const-string v1, "ETag"

    .line 1745
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setETag(Ljava/lang/String;)V

    const-string v1, "Key"

    .line 1746
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setKey(Ljava/lang/String;)V

    const-string v1, "Location"

    .line 1747
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/model/CompleteMultipartUploadResult;->setLocation(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1753
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1751
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseCopyObjectResult(Ljava/io/InputStream;)Lcom/aliyun/oss/model/CopyObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1940
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1942
    new-instance v0, Lcom/aliyun/oss/model/CopyObjectResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/CopyObjectResult;-><init>()V

    const-string v1, "LastModified"

    .line 1943
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/CopyObjectResult;->setLastModified(Ljava/util/Date;)V

    const-string v1, "ETag"

    .line 1944
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/model/CopyObjectResult;->setEtag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1948
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseCreateLiveChannel(Ljava/io/InputStream;)Lcom/aliyun/oss/model/CreateLiveChannelResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Url"

    .line 2273
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2274
    new-instance v1, Lcom/aliyun/oss/model/CreateLiveChannelResult;

    invoke-direct {v1}, Lcom/aliyun/oss/model/CreateLiveChannelResult;-><init>()V

    .line 2276
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "PublishUrls"

    .line 2277
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2278
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2279
    invoke-virtual {v4}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2281
    :cond_0
    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/CreateLiveChannelResult;->setPublishUrls(Ljava/util/List;)V

    .line 2283
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "PlayUrls"

    .line 2284
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2285
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 2286
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2288
    :cond_1
    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/CreateLiveChannelResult;->setPlayUrls(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 2294
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2292
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static parseDeleteObjectsResult(Ljava/io/InputStream;)Lcom/aliyun/oss/model/DeleteObjectsResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "EncodingType"

    .line 1960
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1962
    new-instance v1, Lcom/aliyun/oss/model/DeleteObjectsResult;

    invoke-direct {v1}, Lcom/aliyun/oss/model/DeleteObjectsResult;-><init>()V

    .line 1963
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1964
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1965
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/aliyun/oss/model/DeleteObjectsResult;->setEncodingType(Ljava/lang/String;)V

    .line 1968
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Deleted"

    .line 1969
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1970
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    const-string v3, "Key"

    .line 1971
    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1973
    :cond_2
    invoke-virtual {v1, v0}, Lcom/aliyun/oss/model/DeleteObjectsResult;->setDeletedObjects(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1979
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1977
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetBucketAcl(Ljava/io/InputStream;)Lcom/aliyun/oss/model/AccessControlList;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Owner"

    .line 1102
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1104
    new-instance v1, Lcom/aliyun/oss/model/AccessControlList;

    invoke-direct {v1}, Lcom/aliyun/oss/model/AccessControlList;-><init>()V

    .line 1106
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1107
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    const-string v3, "DisplayName"

    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    new-instance v3, Lcom/aliyun/oss/model/Owner;

    invoke-direct {v3, v2, v0}, Lcom/aliyun/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/AccessControlList;->setOwner(Lcom/aliyun/oss/model/Owner;)V

    const-string v0, "AccessControlList"

    .line 1111
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Grant"

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1112
    invoke-static {p0}, Lcom/aliyun/oss/model/CannedAccessControlList;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/CannedAccessControlList;

    move-result-object p0

    .line 1113
    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/AccessControlList;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    .line 1115
    sget-object v0, Lcom/aliyun/oss/internal/ResponseParsers$1;->$SwitchMap$com$aliyun$oss$model$CannedAccessControlList:[I

    invoke-virtual {p0}, Lcom/aliyun/oss/model/CannedAccessControlList;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    sget-object p0, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    sget-object v0, Lcom/aliyun/oss/model/Permission;->FullControl:Lcom/aliyun/oss/model/Permission;

    invoke-virtual {v1, p0, v0}, Lcom/aliyun/oss/model/AccessControlList;->grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V

    goto :goto_0

    .line 1117
    :cond_1
    sget-object p0, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    sget-object v0, Lcom/aliyun/oss/model/Permission;->Read:Lcom/aliyun/oss/model/Permission;

    invoke-virtual {v1, p0, v0}, Lcom/aliyun/oss/model/AccessControlList;->grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    .line 1130
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1128
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketCname(Ljava/io/InputStream;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/CnameConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "IsPurgeCdnCache"

    .line 2586
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2588
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Cname"

    .line 2589
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2591
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 2592
    new-instance v3, Lcom/aliyun/oss/model/CnameConfiguration;

    invoke-direct {v3}, Lcom/aliyun/oss/model/CnameConfiguration;-><init>()V

    const-string v4, "Domain"

    .line 2594
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/CnameConfiguration;->setDomain(Ljava/lang/String;)V

    const-string v4, "Status"

    .line 2595
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;->valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/CnameConfiguration;->setStatus(Lcom/aliyun/oss/model/CnameConfiguration$CnameStatus;)V

    const-string v4, "LastModified"

    .line 2596
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/CnameConfiguration;->setLastMofiedTime(Ljava/util/Date;)V

    .line 2598
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2599
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2600
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/model/CnameConfiguration;->setPurgeCdnCache(Ljava/lang/Boolean;)V

    .line 2603
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    .line 2610
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2608
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetBucketImageProcessConf(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketProcess;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Version"

    .line 1836
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v1, "CompliedHost"

    .line 1838
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SourceFileProtect"

    .line 1840
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SourceFileProtectSuffix"

    .line 1843
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "StyleDelimiters"

    .line 1844
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1846
    new-instance v5, Lcom/aliyun/oss/model/ImageProcess;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/aliyun/oss/model/ImageProcess;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1849
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p0}, Lcom/aliyun/oss/model/ImageProcess;->setVersion(Ljava/lang/Integer;)V

    .line 1852
    :cond_0
    new-instance p0, Lcom/aliyun/oss/model/BucketProcess;

    invoke-direct {p0, v5}, Lcom/aliyun/oss/model/BucketProcess;-><init>(Lcom/aliyun/oss/model/ImageProcess;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1856
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1854
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketInfo(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "StorageClass"

    const-string v1, "Owner"

    .line 2201
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v2, "Bucket"

    .line 2202
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    .line 2203
    new-instance v2, Lcom/aliyun/oss/model/BucketInfo;

    invoke-direct {v2}, Lcom/aliyun/oss/model/BucketInfo;-><init>()V

    .line 2206
    new-instance v3, Lcom/aliyun/oss/model/Bucket;

    invoke-direct {v3}, Lcom/aliyun/oss/model/Bucket;-><init>()V

    .line 2207
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    const-string v5, "ID"

    invoke-virtual {v4, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2208
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    const-string v5, "DisplayName"

    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2209
    new-instance v5, Lcom/aliyun/oss/model/Owner;

    invoke-direct {v5, v4, v1}, Lcom/aliyun/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2210
    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setOwner(Lcom/aliyun/oss/model/Owner;)V

    const-string v1, "Name"

    .line 2213
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setName(Ljava/lang/String;)V

    const-string v1, "Location"

    .line 2214
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setLocation(Ljava/lang/String;)V

    const-string v1, "ExtranetEndpoint"

    .line 2215
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setExtranetEndpoint(Ljava/lang/String;)V

    const-string v1, "IntranetEndpoint"

    .line 2216
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setIntranetEndpoint(Ljava/lang/String;)V

    const-string v1, "CreationDate"

    .line 2217
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setCreationDate(Ljava/util/Date;)V

    .line 2218
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2219
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/model/StorageClass;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/StorageClass;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/aliyun/oss/model/Bucket;->setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V

    .line 2221
    :cond_0
    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/BucketInfo;->setBucket(Lcom/aliyun/oss/model/Bucket;)V

    const-string v0, "AccessControlList"

    .line 2224
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Grant"

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2225
    invoke-static {p0}, Lcom/aliyun/oss/model/CannedAccessControlList;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/CannedAccessControlList;

    move-result-object p0

    .line 2226
    invoke-virtual {v2, p0}, Lcom/aliyun/oss/model/BucketInfo;->setCannedACL(Lcom/aliyun/oss/model/CannedAccessControlList;)V

    .line 2227
    sget-object v0, Lcom/aliyun/oss/internal/ResponseParsers$1;->$SwitchMap$com$aliyun$oss$model$CannedAccessControlList:[I

    invoke-virtual {p0}, Lcom/aliyun/oss/model/CannedAccessControlList;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    .line 2232
    :cond_1
    sget-object p0, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    sget-object v0, Lcom/aliyun/oss/model/Permission;->FullControl:Lcom/aliyun/oss/model/Permission;

    invoke-virtual {v2, p0, v0}, Lcom/aliyun/oss/model/BucketInfo;->grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V

    goto :goto_0

    .line 2229
    :cond_2
    sget-object p0, Lcom/aliyun/oss/model/GroupGrantee;->AllUsers:Lcom/aliyun/oss/model/GroupGrantee;

    sget-object v0, Lcom/aliyun/oss/model/Permission;->Read:Lcom/aliyun/oss/model/Permission;

    invoke-virtual {v2, p0, v0}, Lcom/aliyun/oss/model/BucketInfo;->grantPermission(Lcom/aliyun/oss/model/Grantee;Lcom/aliyun/oss/model/Permission;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    .line 2242
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2240
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketLifecycle(Ljava/io/InputStream;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "StorageClass"

    const-string v1, "Date"

    const-string v2, "Status"

    const-string v3, "Prefix"

    const-string v4, "ID"

    const-string v5, "AbortMultipartUpload"

    const-string v6, "Expiration"

    .line 2507
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object v7

    .line 2509
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "Rule"

    .line 2510
    invoke-virtual {v7, v9}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2512
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jdom/Element;

    .line 2513
    new-instance v10, Lcom/aliyun/oss/model/LifecycleRule;

    invoke-direct {v10}, Lcom/aliyun/oss/model/LifecycleRule;-><init>()V

    .line 2515
    invoke-virtual {v9, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 2516
    invoke-virtual {v9, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setId(Ljava/lang/String;)V

    .line 2519
    :cond_0
    invoke-virtual {v9, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 2520
    invoke-virtual {v9, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setPrefix(Ljava/lang/String;)V

    .line 2523
    :cond_1
    invoke-virtual {v9, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 2524
    invoke-virtual {v9, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;->valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setStatus(Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;)V

    .line 2527
    :cond_2
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v12, "CreatedBeforeDate"

    const-string v13, "Days"

    if-eqz v11, :cond_5

    .line 2528
    :try_start_1
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    invoke-virtual {v11, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 2529
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    invoke-virtual {v11, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 2530
    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setExpirationTime(Ljava/util/Date;)V

    goto :goto_1

    .line 2531
    :cond_3
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 2532
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    invoke-virtual {v11, v13}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setExpirationDays(I)V

    goto :goto_1

    .line 2534
    :cond_4
    invoke-virtual {v9, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    invoke-virtual {v11, v12}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 2535
    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setCreatedBeforeDate(Ljava/util/Date;)V

    .line 2539
    :cond_5
    :goto_1
    invoke-virtual {v9, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 2540
    new-instance v11, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    invoke-direct {v11}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;-><init>()V

    .line 2541
    invoke-virtual {v9, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 2542
    invoke-virtual {v9, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v14

    invoke-virtual {v14, v13}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v11, v14}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->setExpirationDays(I)V

    goto :goto_2

    .line 2544
    :cond_6
    invoke-virtual {v9, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v14

    invoke-virtual {v14, v12}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 2545
    invoke-virtual {v11, v14}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->setCreatedBeforeDate(Ljava/util/Date;)V

    .line 2547
    :goto_2
    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setAbortMultipartUpload(Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;)V

    :cond_7
    const-string v11, "Transition"

    .line 2550
    invoke-virtual {v9, v11}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 2551
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/jdom/Element;

    .line 2553
    new-instance v15, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;

    invoke-direct {v15}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;-><init>()V

    .line 2554
    invoke-virtual {v14, v13}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v16

    if-eqz v16, :cond_8

    .line 2555
    invoke-virtual {v14, v13}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setExpirationDays(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_8
    move-object/from16 v17, v1

    .line 2557
    invoke-virtual {v14, v12}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 2558
    invoke-virtual {v15, v1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setCreatedBeforeDate(Ljava/util/Date;)V

    .line 2560
    :goto_4
    invoke-virtual {v14, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2561
    invoke-virtual {v14, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/model/StorageClass;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/StorageClass;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V

    .line 2563
    :cond_9
    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    goto :goto_3

    :cond_a
    move-object/from16 v17, v1

    .line 2565
    invoke-virtual {v10, v11}, Lcom/aliyun/oss/model/LifecycleRule;->setStorageTransition(Ljava/util/List;)V

    .line 2567
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v1, v17

    goto/16 :goto_0

    :cond_b
    return-object v8

    :catch_0
    move-exception v0

    .line 2574
    new-instance v1, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 2572
    new-instance v1, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public static parseGetBucketLocation(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1306
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1307
    invoke-virtual {p0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1311
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1309
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketReferer(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketReferer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "RefererList"

    .line 1169
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v1, "AllowEmptyReferer"

    .line 1171
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1173
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1174
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Referer"

    .line 1175
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1176
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 1178
    invoke-virtual {v0}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1182
    :cond_0
    new-instance p0, Lcom/aliyun/oss/model/BucketReferer;

    invoke-direct {p0, v1, v2}, Lcom/aliyun/oss/model/BucketReferer;-><init>(ZLjava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1186
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1184
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetBucketReplication(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/ReplicationRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Action"

    const-string v1, "PrefixSet"

    .line 2079
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2081
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v3, "Rule"

    .line 2082
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2084
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Element;

    .line 2085
    new-instance v4, Lcom/aliyun/oss/model/ReplicationRule;

    invoke-direct {v4}, Lcom/aliyun/oss/model/ReplicationRule;-><init>()V

    const-string v5, "ID"

    .line 2087
    invoke-virtual {v3, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setReplicationRuleID(Ljava/lang/String;)V

    const-string v5, "Destination"

    .line 2089
    invoke-virtual {v3, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    const-string v6, "Bucket"

    .line 2090
    invoke-virtual {v5, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/aliyun/oss/model/ReplicationRule;->setTargetBucketName(Ljava/lang/String;)V

    const-string v6, "Location"

    .line 2091
    invoke-virtual {v5, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setTargetBucketLocation(Ljava/lang/String;)V

    const-string v5, "Status"

    .line 2093
    invoke-virtual {v3, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aliyun/oss/model/ReplicationStatus;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/ReplicationStatus;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setReplicationStatus(Lcom/aliyun/oss/model/ReplicationStatus;)V

    const-string v5, "HistoricalObjectReplication"

    .line 2095
    invoke-virtual {v3, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    .line 2096
    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setEnableHistoricalObjectReplication(Z)V

    goto :goto_1

    .line 2098
    :cond_0
    invoke-virtual {v4, v6}, Lcom/aliyun/oss/model/ReplicationRule;->setEnableHistoricalObjectReplication(Z)V

    .line 2101
    :goto_1
    invoke-virtual {v3, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2103
    invoke-virtual {v3, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v7

    const-string v8, "Prefix"

    invoke-virtual {v7, v8}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2104
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom/Element;

    .line 2105
    invoke-virtual {v8}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2107
    :cond_1
    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setObjectPrefixList(Ljava/util/List;)V

    .line 2110
    :cond_2
    invoke-virtual {v3, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2111
    invoke-virtual {v3, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    array-length v7, v3

    :goto_3
    if-ge v6, v7, :cond_3

    aget-object v8, v3, v6

    .line 2114
    invoke-static {v8}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2116
    :cond_3
    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/ReplicationRule;->setReplicationActionList(Ljava/util/List;)V

    .line 2119
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    return-object v2

    :catch_0
    move-exception p0

    .line 2126
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2124
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public static parseGetBucketReplicationLocation(Ljava/io/InputStream;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 2178
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Location"

    .line 2181
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2183
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 2184
    invoke-virtual {v1}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 2191
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2189
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetBucketReplicationProgress(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketReplicationProgress;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "HistoricalObject"

    .line 2136
    :try_start_0
    new-instance v1, Lcom/aliyun/oss/model/BucketReplicationProgress;

    invoke-direct {v1}, Lcom/aliyun/oss/model/BucketReplicationProgress;-><init>()V

    .line 2138
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v2, "Rule"

    .line 2139
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v2, "ID"

    .line 2141
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setReplicationRuleID(Ljava/lang/String;)V

    const-string v2, "Destination"

    .line 2143
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v3, "Bucket"

    .line 2144
    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setTargetBucketName(Ljava/lang/String;)V

    const-string v3, "Location"

    .line 2145
    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setTargetBucketLocation(Ljava/lang/String;)V

    const-string v2, "Status"

    .line 2147
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/model/ReplicationStatus;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/ReplicationStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setReplicationStatus(Lcom/aliyun/oss/model/ReplicationStatus;)V

    const-string v2, "HistoricalObjectReplication"

    .line 2149
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 2150
    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setEnableHistoricalObjectReplication(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2152
    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setEnableHistoricalObjectReplication(Z)V

    :goto_0
    const-string v2, "Progress"

    .line 2155
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2157
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2158
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setHistoricalObjectProgress(F)V

    :cond_1
    const-string v0, "NewObject"

    .line 2160
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/BucketReplicationProgress;->setNewObjectProgress(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 2167
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2165
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketStat(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketStat;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 2252
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Storage"

    .line 2253
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "ObjectCount"

    .line 2254
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "MultipartUploadCount"

    .line 2255
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 2256
    new-instance v2, Lcom/aliyun/oss/model/BucketStat;

    invoke-direct {v2, v0, v1, p0}, Lcom/aliyun/oss/model/BucketStat;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 2261
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2259
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetBucketTagging(Ljava/io/InputStream;)Lcom/aliyun/oss/model/TagSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Value"

    const-string v1, "Key"

    .line 2043
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2045
    new-instance v2, Lcom/aliyun/oss/model/TagSet;

    invoke-direct {v2}, Lcom/aliyun/oss/model/TagSet;-><init>()V

    const-string v3, "TagSet"

    .line 2046
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v3, "Tag"

    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2048
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom/Element;

    .line 2052
    invoke-virtual {v3, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 2053
    invoke-virtual {v3, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    move-object v4, v5

    .line 2056
    :goto_1
    invoke-virtual {v3, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2057
    invoke-virtual {v3, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2060
    :cond_1
    invoke-virtual {v2, v4, v5}, Lcom/aliyun/oss/model/TagSet;->setTag(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 2067
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2065
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static parseGetLiveChannelHistory(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LiveRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 2386
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "LiveRecord"

    .line 2389
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2391
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 2392
    new-instance v2, Lcom/aliyun/oss/model/LiveRecord;

    invoke-direct {v2}, Lcom/aliyun/oss/model/LiveRecord;-><init>()V

    const-string v3, "StartTime"

    .line 2393
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveRecord;->setStartDate(Ljava/util/Date;)V

    const-string v3, "EndTime"

    .line 2394
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveRecord;->setEndDate(Ljava/util/Date;)V

    const-string v3, "RemoteAddr"

    .line 2395
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/LiveRecord;->setRemoteAddress(Ljava/lang/String;)V

    .line 2396
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 2403
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2401
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetLiveChannelInfo(Ljava/io/InputStream;)Lcom/aliyun/oss/model/LiveChannelInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 2306
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2307
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelInfo;

    invoke-direct {v0}, Lcom/aliyun/oss/model/LiveChannelInfo;-><init>()V

    const-string v1, "Description"

    .line 2309
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/LiveChannelInfo;->setDescription(Ljava/lang/String;)V

    const-string v1, "Status"

    .line 2310
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/model/LiveChannelStatus;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/LiveChannelInfo;->setStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V

    const-string v1, "Target"

    .line 2312
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    .line 2313
    new-instance v1, Lcom/aliyun/oss/model/LiveChannelTarget;

    invoke-direct {v1}, Lcom/aliyun/oss/model/LiveChannelTarget;-><init>()V

    const-string v2, "Type"

    .line 2314
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/LiveChannelTarget;->setType(Ljava/lang/String;)V

    const-string v2, "FragDuration"

    .line 2315
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/LiveChannelTarget;->setFragDuration(I)V

    const-string v2, "FragCount"

    .line 2316
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/aliyun/oss/model/LiveChannelTarget;->setFragCount(I)V

    const-string v2, "PlaylistName"

    .line 2317
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/LiveChannelTarget;->setPlaylistName(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/LiveChannelInfo;->setTarget(Lcom/aliyun/oss/model/LiveChannelTarget;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 2324
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2322
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetLiveChannelStat(Ljava/io/InputStream;)Lcom/aliyun/oss/model/LiveChannelStat;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "RemoteAddr"

    const-string v1, "ConnectedTime"

    .line 2336
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2337
    new-instance v2, Lcom/aliyun/oss/model/LiveChannelStat;

    invoke-direct {v2}, Lcom/aliyun/oss/model/LiveChannelStat;-><init>()V

    const-string v3, "Status"

    .line 2339
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/model/PushflowStatus;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/PushflowStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannelStat;->setPushflowStatus(Lcom/aliyun/oss/model/PushflowStatus;)V

    .line 2341
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2342
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/LiveChannelStat;->setConnectedDate(Ljava/util/Date;)V

    .line 2345
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2346
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/model/LiveChannelStat;->setRemoteAddress(Ljava/lang/String;)V

    :cond_1
    const-string v0, "Video"

    .line 2349
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Codec"

    const-string v3, "Bandwidth"

    if-eqz v0, :cond_2

    .line 2351
    :try_start_1
    new-instance v4, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;

    invoke-direct {v4}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;-><init>()V

    const-string v5, "Width"

    .line 2352
    invoke-virtual {v0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->setWidth(I)V

    const-string v5, "Height"

    .line 2353
    invoke-virtual {v0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->setHeight(I)V

    const-string v5, "FrameRate"

    .line 2354
    invoke-virtual {v0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->setFrameRate(I)V

    .line 2355
    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->setBandWidth(I)V

    .line 2356
    invoke-virtual {v0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;->setCodec(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v2, v4}, Lcom/aliyun/oss/model/LiveChannelStat;->setVideoStat(Lcom/aliyun/oss/model/LiveChannelStat$VideoStat;)V

    :cond_2
    const-string v0, "Audio"

    .line 2360
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2362
    new-instance v0, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;

    invoke-direct {v0}, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;-><init>()V

    .line 2363
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->setBandWidth(I)V

    const-string v3, "SampleRate"

    .line 2364
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->setSampleRate(I)V

    .line 2365
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;->setCodec(Ljava/lang/String;)V

    .line 2366
    invoke-virtual {v2, v0}, Lcom/aliyun/oss/model/LiveChannelStat;->setAudioStat(Lcom/aliyun/oss/model/LiveChannelStat$AudioStat;)V
    :try_end_1
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p0

    .line 2373
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2371
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetObjectAcl(Ljava/io/InputStream;)Lcom/aliyun/oss/model/ObjectAcl;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Owner"

    .line 1141
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1143
    new-instance v1, Lcom/aliyun/oss/model/ObjectAcl;

    invoke-direct {v1}, Lcom/aliyun/oss/model/ObjectAcl;-><init>()V

    .line 1145
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v3, "ID"

    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1146
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    const-string v3, "DisplayName"

    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    new-instance v3, Lcom/aliyun/oss/model/Owner;

    invoke-direct {v3, v2, v0}, Lcom/aliyun/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/ObjectAcl;->setOwner(Lcom/aliyun/oss/model/Owner;)V

    const-string v0, "AccessControlList"

    .line 1150
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Grant"

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1151
    invoke-static {p0}, Lcom/aliyun/oss/model/ObjectPermission;->parsePermission(Ljava/lang/String;)Lcom/aliyun/oss/model/ObjectPermission;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/ObjectAcl;->setPermission(Lcom/aliyun/oss/model/ObjectPermission;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1157
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1155
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetUdfApplicationInfo(Ljava/io/InputStream;)Lcom/aliyun/oss/model/UdfApplicationInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1467
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "ID"

    .line 1469
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Name"

    .line 1470
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "Status"

    .line 1471
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "Region"

    .line 1472
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "ImageVersion"

    .line 1473
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v0, "InstanceNum"

    .line 1474
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const-string v0, "CreationDate"

    .line 1475
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    const-string v0, "Flavor"

    .line 1477
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "InstanceType"

    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1478
    new-instance v9, Lcom/aliyun/oss/model/InstanceFlavor;

    invoke-direct {v9, p0}, Lcom/aliyun/oss/model/InstanceFlavor;-><init>(Ljava/lang/String;)V

    .line 1480
    new-instance p0, Lcom/aliyun/oss/model/UdfApplicationInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/aliyun/oss/model/UdfApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Lcom/aliyun/oss/model/InstanceFlavor;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1484
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1482
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetUdfImageInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Item"

    .line 1437
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1438
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1441
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1442
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    const-string v2, "Version"

    .line 1443
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    const-string v2, "Status"

    .line 1444
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "CanonicalRegion"

    .line 1445
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "Description"

    .line 1446
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "CreationDate"

    .line 1447
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    .line 1448
    new-instance v0, Lcom/aliyun/oss/model/UdfImageInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/aliyun/oss/model/UdfImageInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 1456
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1454
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseGetUdfInfo(Ljava/io/InputStream;)Lcom/aliyun/oss/model/UdfInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1380
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "Name"

    .line 1382
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "ID"

    .line 1383
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Owner"

    .line 1384
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Description"

    .line 1385
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "CreationDate"

    .line 1386
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    const-string v0, "ACL"

    .line 1387
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/model/CannedUdfAcl;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/CannedUdfAcl;

    move-result-object v6

    .line 1389
    new-instance p0, Lcom/aliyun/oss/model/UdfInfo;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/aliyun/oss/model/UdfInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedUdfAcl;Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1393
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1391
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseGetUserQos(Ljava/io/InputStream;)Lcom/aliyun/oss/model/UserQos;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "StorageCapacity"

    .line 2483
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2484
    new-instance v1, Lcom/aliyun/oss/model/UserQos;

    invoke-direct {v1}, Lcom/aliyun/oss/model/UserQos;-><init>()V

    .line 2486
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2487
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/UserQos;->setStorageCapacity(I)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 2494
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2492
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseImageStyle(Ljava/io/InputStream;)Lcom/aliyun/oss/model/GetImageStyleResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1814
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1815
    new-instance v0, Lcom/aliyun/oss/model/GetImageStyleResult;

    invoke-direct {v0}, Lcom/aliyun/oss/model/GetImageStyleResult;-><init>()V

    const-string v1, "Name"

    .line 1816
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/GetImageStyleResult;->SetStyleName(Ljava/lang/String;)V

    const-string v1, "Content"

    .line 1817
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/GetImageStyleResult;->SetStyle(Ljava/lang/String;)V

    const-string v1, "LastModifyTime"

    .line 1818
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aliyun/oss/model/GetImageStyleResult;->SetLastModifyTime(Ljava/util/Date;)V

    const-string v1, "CreateTime"

    .line 1819
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/aliyun/oss/model/GetImageStyleResult;->SetCreationDate(Ljava/util/Date;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1824
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1822
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseInitiateMultipartUpload(Ljava/io/InputStream;)Lcom/aliyun/oss/model/InitiateMultipartUploadResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "UploadId"

    const-string v1, "Key"

    const-string v2, "Bucket"

    .line 1571
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1573
    new-instance v3, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;

    invoke-direct {v3}, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;-><init>()V

    .line 1574
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1575
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;->setBucketName(Ljava/lang/String;)V

    .line 1578
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1579
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;->setKey(Ljava/lang/String;)V

    .line 1582
    :cond_1
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1583
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/aliyun/oss/model/InitiateMultipartUploadResult;->setUploadId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v3

    :catch_0
    move-exception p0

    .line 1590
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1588
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseListBucket(Ljava/io/InputStream;)Lcom/aliyun/oss/model/BucketList;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "StorageClass"

    const-string v1, "Buckets"

    const-string v2, "NextMarker"

    const-string v3, "IsTruncated"

    const-string v4, "MaxKeys"

    const-string v5, "Marker"

    const-string v6, "Prefix"

    .line 1214
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1216
    new-instance v7, Lcom/aliyun/oss/model/BucketList;

    invoke-direct {v7}, Lcom/aliyun/oss/model/BucketList;-><init>()V

    .line 1217
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1218
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/aliyun/oss/model/BucketList;->setPrefix(Ljava/lang/String;)V

    .line 1220
    :cond_0
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1221
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/aliyun/oss/model/BucketList;->setMarker(Ljava/lang/String;)V

    .line 1223
    :cond_1
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1224
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1225
    invoke-static {v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    invoke-virtual {v7, v4}, Lcom/aliyun/oss/model/BucketList;->setMaxKeys(Ljava/lang/Integer;)V

    .line 1227
    :cond_3
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1228
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1229
    invoke-static {v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_1
    invoke-virtual {v7, v3}, Lcom/aliyun/oss/model/BucketList;->setTruncated(Z)V

    .line 1231
    :cond_5
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1232
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/aliyun/oss/model/BucketList;->setNextMarker(Ljava/lang/String;)V

    :cond_6
    const-string v2, "Owner"

    .line 1235
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v3, "ID"

    .line 1236
    invoke-virtual {v2, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayName"

    .line 1237
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1238
    new-instance v4, Lcom/aliyun/oss/model/Owner;

    invoke-direct {v4, v3, v2}, Lcom/aliyun/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1241
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1242
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object p0

    const-string v1, "Bucket"

    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1243
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 1244
    new-instance v3, Lcom/aliyun/oss/model/Bucket;

    invoke-direct {v3}, Lcom/aliyun/oss/model/Bucket;-><init>()V

    .line 1245
    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/Bucket;->setOwner(Lcom/aliyun/oss/model/Owner;)V

    const-string v5, "Name"

    .line 1246
    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setName(Ljava/lang/String;)V

    const-string v5, "Location"

    .line 1247
    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setLocation(Ljava/lang/String;)V

    const-string v5, "CreationDate"

    .line 1248
    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setCreationDate(Ljava/util/Date;)V

    .line 1249
    invoke-virtual {v1, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1250
    invoke-virtual {v1, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/aliyun/oss/model/StorageClass;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/StorageClass;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V

    :cond_7
    const-string v5, "ExtranetEndpoint"

    .line 1252
    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/aliyun/oss/model/Bucket;->setExtranetEndpoint(Ljava/lang/String;)V

    const-string v5, "IntranetEndpoint"

    .line 1253
    invoke-virtual {v1, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/aliyun/oss/model/Bucket;->setIntranetEndpoint(Ljava/lang/String;)V

    .line 1255
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1258
    :cond_8
    invoke-virtual {v7, v2}, Lcom/aliyun/oss/model/BucketList;->setBucketList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    move-exception p0

    .line 1264
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1262
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static parseListBucketCORS(Ljava/io/InputStream;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1991
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CORSRule"

    .line 1994
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1996
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 1997
    new-instance v2, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;

    invoke-direct {v2}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;-><init>()V

    const-string v3, "AllowedOrigin"

    .line 1999
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2000
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2001
    invoke-virtual {v2}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedOrigins()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v3, "AllowedMethod"

    .line 2004
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2005
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2006
    invoke-virtual {v2}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedMethods()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v3, "AllowedHeader"

    .line 2009
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2010
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2011
    invoke-virtual {v2}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getAllowedHeaders()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const-string v3, "ExposeHeader"

    .line 2014
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 2015
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2016
    invoke-virtual {v2}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->getExposeHeaders()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4}, Lorg/jdom/Element;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const-string v3, "MaxAgeSeconds"

    .line 2019
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2021
    invoke-virtual {v1}, Lorg/jdom/Element;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/SetBucketCORSRequest$CORSRule;->setMaxAgeSeconds(Ljava/lang/Integer;)V

    .line 2024
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_5
    return-object v0

    :catch_0
    move-exception p0

    .line 2031
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2029
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public static parseListImageStyle(Ljava/io/InputStream;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/Style;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1277
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Style"

    .line 1280
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1281
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 1282
    new-instance v2, Lcom/aliyun/oss/model/Style;

    invoke-direct {v2}, Lcom/aliyun/oss/model/Style;-><init>()V

    const-string v3, "Name"

    .line 1283
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/Style;->SetStyleName(Ljava/lang/String;)V

    const-string v3, "Content"

    .line 1284
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/Style;->SetStyle(Ljava/lang/String;)V

    const-string v3, "LastModifyTime"

    .line 1285
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/Style;->SetLastModifyTime(Ljava/util/Date;)V

    const-string v3, "CreateTime"

    .line 1286
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/Style;->SetCreationDate(Ljava/util/Date;)V

    .line 1287
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 1293
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1291
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseListLiveChannels(Ljava/io/InputStream;)Lcom/aliyun/oss/model/LiveChannelListing;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Url"

    const-string v1, "NextMarker"

    const-string v2, "MaxKeys"

    const-string v3, "Marker"

    const-string v4, "Prefix"

    .line 2416
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 2418
    new-instance v5, Lcom/aliyun/oss/model/LiveChannelListing;

    invoke-direct {v5}, Lcom/aliyun/oss/model/LiveChannelListing;-><init>()V

    const-string v6, "IsTruncated"

    .line 2419
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/aliyun/oss/model/LiveChannelListing;->setTruncated(Z)V

    .line 2421
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 2422
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2423
    invoke-static {v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v4, v7

    :cond_0
    invoke-virtual {v5, v4}, Lcom/aliyun/oss/model/LiveChannelListing;->setPrefix(Ljava/lang/String;)V

    .line 2426
    :cond_1
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2427
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2428
    invoke-static {v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v3, v7

    :cond_2
    invoke-virtual {v5, v3}, Lcom/aliyun/oss/model/LiveChannelListing;->setMarker(Ljava/lang/String;)V

    .line 2431
    :cond_3
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2432
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2433
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/aliyun/oss/model/LiveChannelListing;->setMaxKeys(I)V

    .line 2436
    :cond_4
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2437
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2438
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v1, v7

    :cond_5
    invoke-virtual {v5, v1}, Lcom/aliyun/oss/model/LiveChannelListing;->setNextMarker(Ljava/lang/String;)V

    :cond_6
    const-string v1, "LiveChannel"

    .line 2441
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2442
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom/Element;

    .line 2443
    new-instance v2, Lcom/aliyun/oss/model/LiveChannel;

    invoke-direct {v2}, Lcom/aliyun/oss/model/LiveChannel;-><init>()V

    const-string v3, "Name"

    .line 2445
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setName(Ljava/lang/String;)V

    const-string v3, "Description"

    .line 2446
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setDescription(Ljava/lang/String;)V

    const-string v3, "Status"

    .line 2447
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/model/LiveChannelStatus;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/LiveChannelStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setStatus(Lcom/aliyun/oss/model/LiveChannelStatus;)V

    const-string v3, "LastModified"

    .line 2448
    invoke-virtual {v1, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setLastModified(Ljava/util/Date;)V

    .line 2450
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "PublishUrls"

    .line 2451
    invoke-virtual {v1, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2452
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom/Element;

    .line 2453
    invoke-virtual {v6}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2455
    :cond_7
    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setPublishUrls(Ljava/util/List;)V

    .line 2457
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "PlayUrls"

    .line 2458
    invoke-virtual {v1, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2459
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom/Element;

    .line 2460
    invoke-virtual {v4}, Lorg/jdom/Element;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2462
    :cond_8
    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/LiveChannel;->setPlayUrls(Ljava/util/List;)V

    .line 2464
    invoke-virtual {v5, v2}, Lcom/aliyun/oss/model/LiveChannelListing;->addLiveChannel(Lcom/aliyun/oss/model/LiveChannel;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_9
    return-object v5

    :catch_0
    move-exception p0

    .line 2471
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 2469
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public static parseListMultipartUploads(Ljava/io/InputStream;)Lcom/aliyun/oss/model/MultipartUploadListing;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Initiated"

    const-string v1, "NextUploadIdMarker"

    const-string v2, "NextKeyMarker"

    const-string v3, "UploadIdMarker"

    const-string v4, "KeyMarker"

    const-string v5, "Delimiter"

    const-string v6, "Prefix"

    .line 1602
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1604
    new-instance v7, Lcom/aliyun/oss/model/MultipartUploadListing;

    invoke-direct {v7}, Lcom/aliyun/oss/model/MultipartUploadListing;-><init>()V

    const-string v8, "Bucket"

    .line 1605
    invoke-virtual {p0, v8}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/aliyun/oss/model/MultipartUploadListing;->setBucketName(Ljava/lang/String;)V

    const-string v8, "MaxUploads"

    .line 1606
    invoke-virtual {p0, v8}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/aliyun/oss/model/MultipartUploadListing;->setMaxUploads(I)V

    const-string v8, "IsTruncated"

    .line 1607
    invoke-virtual {p0, v8}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/aliyun/oss/model/MultipartUploadListing;->setTruncated(Z)V

    .line 1609
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1610
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1611
    invoke-static {v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1612
    invoke-virtual {v7, v5}, Lcom/aliyun/oss/model/MultipartUploadListing;->setDelimiter(Ljava/lang/String;)V

    .line 1616
    :cond_0
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1617
    invoke-virtual {p0, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1618
    invoke-static {v5}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1619
    invoke-virtual {v7, v5}, Lcom/aliyun/oss/model/MultipartUploadListing;->setPrefix(Ljava/lang/String;)V

    .line 1623
    :cond_1
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1624
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1625
    invoke-static {v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1626
    invoke-virtual {v7, v4}, Lcom/aliyun/oss/model/MultipartUploadListing;->setKeyMarker(Ljava/lang/String;)V

    .line 1630
    :cond_2
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1631
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1632
    invoke-static {v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1633
    invoke-virtual {v7, v3}, Lcom/aliyun/oss/model/MultipartUploadListing;->setUploadIdMarker(Ljava/lang/String;)V

    .line 1637
    :cond_3
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1638
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1639
    invoke-static {v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1640
    invoke-virtual {v7, v2}, Lcom/aliyun/oss/model/MultipartUploadListing;->setNextKeyMarker(Ljava/lang/String;)V

    .line 1644
    :cond_4
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1645
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1646
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1647
    invoke-virtual {v7, v1}, Lcom/aliyun/oss/model/MultipartUploadListing;->setNextUploadIdMarker(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Upload"

    .line 1651
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1652
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 1653
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 1657
    :cond_6
    new-instance v3, Lcom/aliyun/oss/model/MultipartUpload;

    invoke-direct {v3}, Lcom/aliyun/oss/model/MultipartUpload;-><init>()V

    const-string v4, "Key"

    .line 1658
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/MultipartUpload;->setKey(Ljava/lang/String;)V

    const-string v4, "UploadId"

    .line 1659
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/MultipartUpload;->setUploadId(Ljava/lang/String;)V

    const-string v4, "StorageClass"

    .line 1660
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/MultipartUpload;->setStorageClass(Ljava/lang/String;)V

    .line 1661
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/aliyun/oss/model/MultipartUpload;->setInitiated(Ljava/util/Date;)V

    .line 1662
    invoke-virtual {v7, v3}, Lcom/aliyun/oss/model/MultipartUploadListing;->addMultipartUpload(Lcom/aliyun/oss/model/MultipartUpload;)V

    goto :goto_0

    :cond_7
    const-string v0, "CommonPrefixes"

    .line 1665
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1666
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 1667
    invoke-virtual {v0, v6}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1668
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1669
    invoke-virtual {v7, v0}, Lcom/aliyun/oss/model/MultipartUploadListing;->addCommonPrefix(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_9
    return-object v7

    :catch_0
    move-exception p0

    .line 1677
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1675
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static parseListObjects(Ljava/io/InputStream;)Lcom/aliyun/oss/model/ObjectListing;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "Owner"

    const-string v1, "EncodingType"

    const-string v2, "NextMarker"

    const-string v3, "Delimiter"

    const-string v4, "Marker"

    const-string v5, "Prefix"

    .line 1028
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1030
    new-instance v6, Lcom/aliyun/oss/model/ObjectListing;

    invoke-direct {v6}, Lcom/aliyun/oss/model/ObjectListing;-><init>()V

    const-string v7, "Name"

    .line 1031
    invoke-virtual {p0, v7}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/aliyun/oss/model/ObjectListing;->setBucketName(Ljava/lang/String;)V

    const-string v7, "MaxKeys"

    .line 1032
    invoke-virtual {p0, v7}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aliyun/oss/model/ObjectListing;->setMaxKeys(I)V

    const-string v7, "IsTruncated"

    .line 1033
    invoke-virtual {p0, v7}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/aliyun/oss/model/ObjectListing;->setTruncated(Z)V

    .line 1035
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 1036
    invoke-virtual {p0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1037
    invoke-static {v7}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v7, v8

    :cond_0
    invoke-virtual {v6, v7}, Lcom/aliyun/oss/model/ObjectListing;->setPrefix(Ljava/lang/String;)V

    .line 1040
    :cond_1
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1041
    invoke-virtual {p0, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1042
    invoke-static {v4}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v8

    :cond_2
    invoke-virtual {v6, v4}, Lcom/aliyun/oss/model/ObjectListing;->setMarker(Ljava/lang/String;)V

    .line 1045
    :cond_3
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1046
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-static {v3}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v3, v8

    :cond_4
    invoke-virtual {v6, v3}, Lcom/aliyun/oss/model/ObjectListing;->setDelimiter(Ljava/lang/String;)V

    .line 1050
    :cond_5
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 1051
    invoke-virtual {p0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-static {v2}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v2, v8

    :cond_6
    invoke-virtual {v6, v2}, Lcom/aliyun/oss/model/ObjectListing;->setNextMarker(Ljava/lang/String;)V

    .line 1055
    :cond_7
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1056
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v1, v8

    :cond_8
    invoke-virtual {v6, v1}, Lcom/aliyun/oss/model/ObjectListing;->setEncodingType(Ljava/lang/String;)V

    :cond_9
    const-string v1, "Contents"

    .line 1060
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1061
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom/Element;

    .line 1062
    new-instance v3, Lcom/aliyun/oss/model/OSSObjectSummary;

    invoke-direct {v3}, Lcom/aliyun/oss/model/OSSObjectSummary;-><init>()V

    const-string v4, "Key"

    .line 1064
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/OSSObjectSummary;->setKey(Ljava/lang/String;)V

    const-string v4, "ETag"

    .line 1065
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/OSSObjectSummary;->setETag(Ljava/lang/String;)V

    const-string v4, "LastModified"

    .line 1066
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/OSSObjectSummary;->setLastModified(Ljava/util/Date;)V

    const-string v4, "Size"

    .line 1067
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lcom/aliyun/oss/model/OSSObjectSummary;->setSize(J)V

    const-string v4, "StorageClass"

    .line 1068
    invoke-virtual {v2, v4}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/OSSObjectSummary;->setStorageClass(Ljava/lang/String;)V

    .line 1069
    invoke-virtual {v6}, Lcom/aliyun/oss/model/ObjectListing;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/aliyun/oss/model/OSSObjectSummary;->setBucketName(Ljava/lang/String;)V

    .line 1071
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v4

    const-string v7, "ID"

    invoke-virtual {v4, v7}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    invoke-virtual {v2, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    const-string v7, "DisplayName"

    invoke-virtual {v2, v7}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1073
    new-instance v7, Lcom/aliyun/oss/model/Owner;

    invoke-direct {v7, v4, v2}, Lcom/aliyun/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lcom/aliyun/oss/model/OSSObjectSummary;->setOwner(Lcom/aliyun/oss/model/Owner;)V

    .line 1075
    invoke-virtual {v6, v3}, Lcom/aliyun/oss/model/ObjectListing;->addObjectSummary(Lcom/aliyun/oss/model/OSSObjectSummary;)V

    goto :goto_0

    :cond_a
    const-string v0, "CommonPrefixes"

    .line 1078
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1079
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 1080
    invoke-virtual {v0, v5}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1082
    invoke-virtual {v6, v0}, Lcom/aliyun/oss/model/ObjectListing;->addCommonPrefix(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_c
    return-object v6

    :catch_0
    move-exception p0

    .line 1090
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1088
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static parseListParts(Ljava/io/InputStream;)Lcom/aliyun/oss/model/PartListing;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "NextPartNumberMarker"

    const-string v1, "PartNumberMarker"

    .line 1689
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1691
    new-instance v2, Lcom/aliyun/oss/model/PartListing;

    invoke-direct {v2}, Lcom/aliyun/oss/model/PartListing;-><init>()V

    const-string v3, "Bucket"

    .line 1692
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setBucketName(Ljava/lang/String;)V

    const-string v3, "Key"

    .line 1693
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setKey(Ljava/lang/String;)V

    const-string v3, "UploadId"

    .line 1694
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setUploadId(Ljava/lang/String;)V

    const-string v3, "StorageClass"

    .line 1695
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setStorageClass(Ljava/lang/String;)V

    const-string v3, "MaxParts"

    .line 1696
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setMaxParts(I)V

    const-string v3, "IsTruncated"

    .line 1697
    invoke-virtual {p0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/aliyun/oss/model/PartListing;->setTruncated(Z)V

    .line 1699
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1700
    invoke-virtual {p0, v1}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1701
    invoke-static {v1}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/PartListing;->setPartNumberMarker(I)V

    .line 1706
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1707
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    invoke-static {v0}, Lcom/aliyun/oss/common/utils/CodingUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1709
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/aliyun/oss/model/PartListing;->setNextPartNumberMarker(I)V

    :cond_1
    const-string v0, "Part"

    .line 1713
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1714
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    .line 1715
    new-instance v1, Lcom/aliyun/oss/model/PartSummary;

    invoke-direct {v1}, Lcom/aliyun/oss/model/PartSummary;-><init>()V

    const-string v3, "PartNumber"

    .line 1717
    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/PartSummary;->setPartNumber(I)V

    const-string v3, "LastModified"

    .line 1718
    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/PartSummary;->setLastModified(Ljava/util/Date;)V

    const-string v3, "ETag"

    .line 1719
    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/aliyun/oss/model/PartSummary;->setETag(Ljava/lang/String;)V

    const-string v3, "Size"

    .line 1720
    invoke-virtual {v0, v3}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/PartSummary;->setSize(J)V

    .line 1722
    invoke-virtual {v2, v1}, Lcom/aliyun/oss/model/PartListing;->addPart(Lcom/aliyun/oss/model/PartSummary;)V
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v2

    :catch_0
    move-exception p0

    .line 1729
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1727
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseListUdf(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "UDFInfo"

    .line 1405
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1408
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1409
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1410
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    const-string v2, "Name"

    .line 1411
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "ID"

    .line 1412
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "Owner"

    .line 1413
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Description"

    .line 1414
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "CreationDate"

    .line 1415
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    const-string v2, "ACL"

    .line 1416
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aliyun/oss/model/CannedUdfAcl;->parse(Ljava/lang/String;)Lcom/aliyun/oss/model/CannedUdfAcl;

    move-result-object v8

    .line 1417
    new-instance v0, Lcom/aliyun/oss/model/UdfInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/aliyun/oss/model/UdfInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aliyun/oss/model/CannedUdfAcl;Ljava/util/Date;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 1425
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1423
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseListUdfApplicationInfo(Ljava/io/InputStream;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/UdfApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "UDFApplicationInfo"

    .line 1496
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    .line 1497
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1500
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 1501
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Element;

    const-string v2, "ID"

    .line 1502
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "Name"

    .line 1503
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "Status"

    .line 1504
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "Region"

    .line 1505
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "ImageVersion"

    .line 1506
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const-string v2, "InstanceNum"

    .line 1507
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const-string v2, "CreationDate"

    .line 1508
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    const-string v2, "Flavor"

    .line 1510
    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChild(Ljava/lang/String;)Lorg/jdom/Element;

    move-result-object v0

    const-string v2, "InstanceType"

    invoke-virtual {v0, v2}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1511
    new-instance v11, Lcom/aliyun/oss/model/InstanceFlavor;

    invoke-direct {v11, v0}, Lcom/aliyun/oss/model/InstanceFlavor;-><init>(Ljava/lang/String;)V

    .line 1513
    new-instance v0, Lcom/aliyun/oss/model/UdfApplicationInfo;

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/aliyun/oss/model/UdfApplicationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;Lcom/aliyun/oss/model/InstanceFlavor;)V

    .line 1515
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 1523
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1521
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseObjectMetadata(Ljava/util/Map;)Lcom/aliyun/oss/model/ObjectMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/ObjectMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    const-string v0, "x-oss-meta-"

    .line 1534
    :try_start_0
    new-instance v1, Lcom/aliyun/oss/model/ObjectMetadata;

    invoke-direct {v1}, Lcom/aliyun/oss/model/ObjectMetadata;-><init>()V

    .line 1536
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1537
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1539
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    const/16 v4, 0xb

    .line 1540
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/ObjectMetadata;->addUserMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "Last-Modified"

    .line 1542
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "Date"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "Content-Length"

    .line 1548
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1549
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 1550
    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "ETag"

    .line 1551
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1552
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1554
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1544
    :cond_4
    :goto_1
    :try_start_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/aliyun/oss/model/ObjectMetadata;->setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 1546
    :try_start_2
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    return-object v1

    :catch_1
    move-exception p0

    .line 1560
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public static parseSimplifiedObjectMeta(Ljava/util/Map;)Lcom/aliyun/oss/model/SimplifiedObjectMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/aliyun/oss/model/SimplifiedObjectMeta;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1323
    :try_start_0
    new-instance v0, Lcom/aliyun/oss/model/SimplifiedObjectMeta;

    invoke-direct {v0}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;-><init>()V

    .line 1325
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Last-Modified"

    .line 1328
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_1

    .line 1330
    :try_start_1
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->setLastModified(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1332
    :try_start_2
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const-string v3, "Content-Length"

    .line 1334
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1335
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1336
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->setSize(J)V

    goto :goto_0

    :cond_2
    const-string v3, "ETag"

    .line 1337
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1338
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/aliyun/oss/internal/OSSUtils;->trimQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->setETag(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "x-oss-request-id"

    .line 1339
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1340
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/aliyun/oss/model/SimplifiedObjectMeta;->setRequestId(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :cond_4
    return-object v0

    :catch_1
    move-exception p0

    .line 1346
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static parseSymbolicLink(Lcom/aliyun/oss/common/comm/ResponseMessage;)Lcom/aliyun/oss/model/OSSSymlink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1359
    :try_start_0
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-oss-symlink-target"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "UTF-8"

    .line 1361
    invoke-static {v0, v2}, Lcom/aliyun/oss/common/utils/HttpUtil;->urlDecode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1362
    new-instance v2, Lcom/aliyun/oss/model/OSSSymlink;

    invoke-direct {v2, v1, v0}, Lcom/aliyun/oss/model/OSSSymlink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 1365
    :cond_0
    invoke-virtual {p0}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->parseObjectMetadata(Ljava/util/Map;)Lcom/aliyun/oss/model/ObjectMetadata;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/aliyun/oss/model/OSSSymlink;->setMetadata(Lcom/aliyun/oss/model/ObjectMetadata;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 1369
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static parseUploadPartCopy(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/aliyun/oss/common/parser/ResponseParseException;
        }
    .end annotation

    .line 1197
    :try_start_0
    invoke-static {p0}, Lcom/aliyun/oss/internal/ResponseParsers;->getXmlRootElement(Ljava/io/InputStream;)Lorg/jdom/Element;

    move-result-object p0

    const-string v0, "ETag"

    .line 1198
    invoke-virtual {p0, v0}, Lorg/jdom/Element;->getChildText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/jdom/input/JDOMParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1202
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 1200
    new-instance v0, Lcom/aliyun/oss/common/parser/ResponseParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getPartialDocument()Lorg/jdom/Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jdom/input/JDOMParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/aliyun/oss/common/parser/ResponseParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static setCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Lcom/aliyun/oss/model/GenericResult;",
            ">(TResultType;",
            "Lcom/aliyun/oss/common/comm/ResponseMessage;",
            ")V"
        }
    .end annotation

    .line 991
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getRequest()Lcom/aliyun/oss/common/comm/ServiceClient$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aliyun/oss/common/comm/ServiceClient$Request;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 992
    instance-of v1, v0, Ljava/util/zip/CheckedInputStream;

    if-eqz v1, :cond_0

    .line 993
    nop

    nop

    .line 994
    invoke-virtual {v0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/aliyun/oss/model/GenericResult;->setClientCRC(Ljava/lang/Long;)V

    .line 997
    :cond_0
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "x-oss-hash-crc64ecma"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 999
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/GenericResult;->setServerCRC(Ljava/lang/Long;)V

    :cond_1
    return-void
.end method

.method public static setServerCRC(Lcom/aliyun/oss/model/GenericResult;Lcom/aliyun/oss/common/comm/ResponseMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultType:",
            "Lcom/aliyun/oss/model/GenericResult;",
            ">(TResultType;",
            "Lcom/aliyun/oss/common/comm/ResponseMessage;",
            ")V"
        }
    .end annotation

    .line 1006
    invoke-virtual {p1}, Lcom/aliyun/oss/common/comm/ResponseMessage;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v0, "x-oss-hash-crc64ecma"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1008
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/GenericResult;->setServerCRC(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method
