.class public Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;
.super Ljava/lang/Object;
.source "LifecycleRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/LifecycleRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AbortMultipartUpload"
.end annotation


# instance fields
.field private createdBeforeDate:Ljava/util/Date;

.field private expirationDays:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->expirationDays:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->createdBeforeDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getCreatedBeforeDate()Ljava/util/Date;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->createdBeforeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationDays()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->expirationDays:I

    return v0
.end method

.method public hasCreatedBeforeDate()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->createdBeforeDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpirationDays()Z
    .locals 1

    .line 65
    iget v0, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->expirationDays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setCreatedBeforeDate(Ljava/util/Date;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->createdBeforeDate:Ljava/util/Date;

    return-void
.end method

.method public setExpirationDays(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->expirationDays:I

    return-void
.end method

.method public withCreatedBeforeDate(Ljava/util/Date;)Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->setCreatedBeforeDate(Ljava/util/Date;)V

    return-object p0
.end method

.method public withExpirationDays(I)Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/LifecycleRule$AbortMultipartUpload;->setExpirationDays(I)V

    return-object p0
.end method
