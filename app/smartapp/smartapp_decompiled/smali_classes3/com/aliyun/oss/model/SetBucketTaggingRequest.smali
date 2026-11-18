.class public Lcom/aliyun/oss/model/SetBucketTaggingRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketTaggingRequest.java"


# instance fields
.field private tagSet:Lcom/aliyun/oss/model/TagSet;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    .line 31
    new-instance p1, Lcom/aliyun/oss/model/TagSet;

    invoke-direct {p1}, Lcom/aliyun/oss/model/TagSet;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/aliyun/oss/model/TagSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    .line 41
    iput-object p2, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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

    .line 35
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    .line 36
    new-instance p1, Lcom/aliyun/oss/model/TagSet;

    invoke-direct {p1, p2}, Lcom/aliyun/oss/model/TagSet;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    return-void
.end method


# virtual methods
.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    invoke-virtual {v0, p1}, Lcom/aliyun/oss/model/TagSet;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTagSet()Lcom/aliyun/oss/model/TagSet;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    return-object v0
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    invoke-virtual {v0, p1, p2}, Lcom/aliyun/oss/model/TagSet;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTagSet(Lcom/aliyun/oss/model/TagSet;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->tagSet:Lcom/aliyun/oss/model/TagSet;

    return-void
.end method

.method public withTagSet(Lcom/aliyun/oss/model/TagSet;)Lcom/aliyun/oss/model/SetBucketTaggingRequest;
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/SetBucketTaggingRequest;->setTagSet(Lcom/aliyun/oss/model/TagSet;)V

    return-object p0
.end method
