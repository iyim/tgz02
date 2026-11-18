.class public final Lcom/aliyun/oss/common/parser/RequestMarshallers;
.super Ljava/lang/Object;
.source "RequestMarshallers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketQosRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketCnameRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketCnameRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketReplicationRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketReplicationRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketTaggingRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketWebsiteRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLoggingRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketRefererMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$PutBucketImageRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketImageProcessConfMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$PutImageStyleRequestMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller2;,
        Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller;
    }
.end annotation


# static fields
.field public static final addBucketCnameRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketCnameRequestMarshaller;

.field public static final addBucketReplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketReplicationRequestMarshaller;

.field public static final bucketImageProcessConfMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketImageProcessConfMarshaller;

.field public static final bucketRefererMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketRefererMarshaller;

.field public static final completeMultipartUploadRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;

.field public static final createBucketRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;

.field public static final createLiveChannelRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;

.field public static final createUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;

.field public static final createUdfRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;

.field public static final deleteBucketCnameRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketCnameRequestMarshaller;

.field public static final deleteBucketReplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketReplicationRequestMarshaller;

.field public static final deleteObjectsRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;

.field public static final processObjectRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;

.field public static final putBucketImageRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$PutBucketImageRequestMarshaller;

.field public static final putImageStyleRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$PutImageStyleRequestMarshaller;

.field public static final resizeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;

.field public static final setBucketCORSRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;

.field public static final setBucketLifecycleRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;

.field public static final setBucketLoggingRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLoggingRequestMarshaller;

.field public static final setBucketQosRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketQosRequestMarshaller;

.field public static final setBucketTaggingRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketTaggingRequestMarshaller;

.field public static final setBucketWebsiteRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketWebsiteRequestMarshaller;

.field public static final stringMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;

.field public static final upgradeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->stringMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;

    .line 76
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->deleteObjectsRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteObjectsRequestMarshaller;

    .line 78
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createBucketRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateBucketRequestMarshaller;

    .line 79
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketRefererMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketRefererMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->bucketRefererMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketRefererMarshaller;

    .line 80
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLoggingRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLoggingRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketLoggingRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLoggingRequestMarshaller;

    .line 81
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketWebsiteRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketWebsiteRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketWebsiteRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketWebsiteRequestMarshaller;

    .line 82
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketLifecycleRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;

    .line 83
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$PutBucketImageRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$PutBucketImageRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->putBucketImageRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$PutBucketImageRequestMarshaller;

    .line 84
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$PutImageStyleRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$PutImageStyleRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->putImageStyleRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$PutImageStyleRequestMarshaller;

    .line 85
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketImageProcessConfMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketImageProcessConfMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->bucketImageProcessConfMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$BucketImageProcessConfMarshaller;

    .line 86
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketCORSRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketCORSRequestMarshaller;

    .line 87
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketTaggingRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketTaggingRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketTaggingRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketTaggingRequestMarshaller;

    .line 88
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketReplicationRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketReplicationRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->addBucketReplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketReplicationRequestMarshaller;

    .line 89
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketReplicationRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketReplicationRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->deleteBucketReplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketReplicationRequestMarshaller;

    .line 90
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketCnameRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketCnameRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->addBucketCnameRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$AddBucketCnameRequestMarshaller;

    .line 91
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketCnameRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketCnameRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->deleteBucketCnameRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$DeleteBucketCnameRequestMarshaller;

    .line 92
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketQosRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketQosRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->setBucketQosRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketQosRequestMarshaller;

    .line 93
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->completeMultipartUploadRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CompleteMultipartUploadRequestMarshaller;

    .line 94
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createLiveChannelRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateLiveChannelRequestMarshaller;

    .line 95
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createUdfRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfRequestMarshaller;

    .line 96
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->createUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$CreateUdfApplicationRequestMarshaller;

    .line 97
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->upgradeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$UpgradeUdfApplicationRequestMarshaller;

    .line 98
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->resizeUdfApplicationRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ResizeUdfApplicationRequestMarshaller;

    .line 99
    new-instance v0, Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;

    invoke-direct {v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;-><init>()V

    sput-object v0, Lcom/aliyun/oss/common/parser/RequestMarshallers;->processObjectRequestMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$ProcessObjectRequestMarshaller;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/aliyun/oss/common/parser/RequestMarshallers;->escapeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/util/List;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-static {p0}, Lcom/aliyun/oss/common/parser/RequestMarshallers;->joinRepliationAction(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static escapeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 852
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_9

    .line 855
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_7

    const/16 v4, 0xa

    if-eq v3, v4, :cond_6

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0x22

    if-eq v3, v4, :cond_4

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 877
    :cond_1
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->GT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 874
    :cond_2
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->LT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 868
    :cond_3
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->AMP:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 871
    :cond_4
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->QUOT:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 865
    :cond_5
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->RETURN:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 862
    :cond_6
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->NEWLINE:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    goto :goto_1

    .line 859
    :cond_7
    sget-object v4, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->TAB:Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;

    :goto_1
    if-eqz v4, :cond_8

    .line 885
    invoke-virtual {v4}, Lcom/aliyun/oss/common/parser/RequestMarshallers$EscapedChar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 887
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static joinRepliationAction(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    if-nez v1, :cond_0

    const-string v1, ","

    .line 900
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
