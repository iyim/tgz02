.class public final Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;
.super Ljava/lang/Object;
.source "RequestMarshallers.java"

# interfaces
.implements Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/common/parser/RequestMarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetBucketLifecycleRequestMarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aliyun/oss/common/parser/RequestMarshallers$RequestMarshaller<",
        "Lcom/aliyun/oss/model/SetBucketLifecycleRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public marshall(Lcom/aliyun/oss/model/SetBucketLifecycleRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;
    .locals 6

    .line 367
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<LifecycleConfiguration>"

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    invoke-virtual {p1}, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;->getLifecycleRules()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aliyun/oss/model/LifecycleRule;

    const-string v2, "<Rule>"

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<ID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</ID>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    :cond_0
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Prefix>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</Prefix>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v2, "<Prefix></Prefix>"

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    :goto_1
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getStatus()Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    move-result-object v2

    sget-object v3, Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;->Enabled:Lcom/aliyun/oss/model/LifecycleRule$RuleStatus;

    if-ne v2, v3, :cond_2

    const-string v2, "<Status>Enabled</Status>"

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    const-string v2, "<Status>Disabled</Status>"

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :goto_2
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 389
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getExpirationTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Expiration><Date>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</Date></Expiration>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 391
    :cond_3
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getExpirationDays()I

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<Expiration><Days>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getExpirationDays()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "</Days></Expiration>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 393
    :cond_4
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getCreatedBeforeDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 394
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getCreatedBeforeDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 395
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Expiration><CreatedBeforeDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</CreatedBeforeDate></Expiration>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 398
    :cond_5
    :goto_3
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->hasAbortMultipartUpload()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 399
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getAbortMultipartUpload()Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->getExpirationDays()I

    move-result v3

    if-eqz v3, :cond_6

    .line 401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<AbortMultipartUpload><Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->getExpirationDays()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</Days></AbortMultipartUpload>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 403
    :cond_6
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->getCreatedBeforeDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/aliyun/oss/common/utils/DateUtil;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<AbortMultipartUpload><CreatedBeforeDate>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</CreatedBeforeDate></AbortMultipartUpload>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 408
    :cond_7
    :goto_4
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->hasStorageTransition()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 409
    invoke-virtual {v1}, Lcom/aliyun/oss/model/LifecycleRule;->getStorageTransition()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;

    const-string v3, "<Transition>"

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->hasExpirationDays()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->getExpirationDays()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "</Days>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 413
    :cond_8
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->hasCreatedBeforeDate()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 414
    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->getCreatedBeforeDate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/aliyun/oss/common/utils/DateUtil;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<CreatedBeforeDate>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</CreatedBeforeDate>"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    :cond_9
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<StorageClass>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->getStorageClass()Lcom/aliyun/oss/model/StorageClass;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "</StorageClass>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "</Transition>"

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_a
    const-string v1, "</Rule>"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_b
    const-string p1, "</LifecycleConfiguration>"

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    sget-object p1, Lcom/aliyun/oss/common/parser/RequestMarshallers;->stringMarshaller:Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/aliyun/oss/common/parser/RequestMarshallers$StringMarshaller;->marshall(Ljava/lang/String;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic marshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 363
    check-cast p1, Lcom/aliyun/oss/model/SetBucketLifecycleRequest;

    invoke-virtual {p0, p1}, Lcom/aliyun/oss/common/parser/RequestMarshallers$SetBucketLifecycleRequestMarshaller;->marshall(Lcom/aliyun/oss/model/SetBucketLifecycleRequest;)Lcom/aliyun/oss/common/comm/io/FixedLengthInputStream;

    move-result-object p1

    return-object p1
.end method
