.class public Lcom/aliyun/oss/model/SetBucketLifecycleRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "SetBucketLifecycleRequest.java"


# static fields
.field public static final MAX_LIFECYCLE_RULE_LIMIT:I = 0x3e8

.field public static final MAX_RULE_ID_LENGTH:I = 0xff


# instance fields
.field private lifecycleRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public AddLifecycleRule(Lcom/aliyun/oss/model/LifecycleRule;)V
    .locals 4

    if-eqz p1, :cond_a

    .line 64
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_9

    .line 68
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Length of lifecycle rule id exceeds max limit 255"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasExpirationTime()Z

    move-result v0

    .line 74
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasExpirationDays()Z

    move-result v1

    .line 75
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasCreatedBeforeDate()Z

    move-result v2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    if-nez v0, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasAbortMultipartUpload()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasStorageTransition()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    :cond_2
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->getStatus()Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    move-result-object v0

    sget-object v2, Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;->Unknown:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    if-eq v0, v2, :cond_7

    .line 86
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasAbortMultipartUpload()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->getAbortMultipartUpload()Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->hasExpirationDays()Z

    move-result v2

    .line 89
    invoke-virtual {v0}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->hasCreatedBeforeDate()Z

    move-result v0

    add-int/2addr v2, v0

    if-ne v2, v1, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one expiration property for AbortMultipartUpload should be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->hasStorageTransition()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {p1}, Lcom/aliyun/oss/model/LifecycleRule;->getStorageTransition()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;

    .line 98
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->hasExpirationDays()Z

    move-result v3

    .line 99
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->hasCreatedBeforeDate()Z

    move-result v2

    add-int/2addr v3, v2

    if-ne v3, v1, :cond_5

    goto :goto_2

    .line 102
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one expiration property for StorageTransition should be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 83
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RuleStatus property should be specified with \'Enabled\' or \'Disabled\'."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one expiration property should be specified."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One bucket not allow exceed one thousand items of LifecycleRules."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lifecycleRule should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public clearLifecycles()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getLifecycleRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    return-object v0
.end method

.method public setLifecycleRules(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/LifecycleRule;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 43
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->lifecycleRules:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "One bucket not allow exceed one thousand items of LifecycleRules."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "lifecycleRules should not be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
