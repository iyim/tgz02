.class public Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;
.super Ljava/lang/Object;
.source "LifecycleRule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/LifecycleRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageTransition"
.end annotation


# instance fields
.field private createdBeforeDate:Ljava/util/Date;

.field private expirationDays:Ljava/lang/Integer;

.field private storageClass:Lcom/aliyun/oss/model/StorageClass;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/aliyun/oss/model/StorageClass;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->expirationDays:Ljava/lang/Integer;

    .line 95
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Lcom/aliyun/oss/model/StorageClass;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->createdBeforeDate:Ljava/util/Date;

    .line 100
    iput-object p2, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method


# virtual methods
.method public getCreatedBeforeDate()Ljava/util/Date;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->createdBeforeDate:Ljava/util/Date;

    return-object v0
.end method

.method public getExpirationDays()Ljava/lang/Integer;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->expirationDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStorageClass()Lcom/aliyun/oss/model/StorageClass;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-object v0
.end method

.method public hasCreatedBeforeDate()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->createdBeforeDate:Ljava/util/Date;

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

    .line 117
    iget-object v0, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->expirationDays:Ljava/lang/Integer;

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

    .line 125
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->createdBeforeDate:Ljava/util/Date;

    return-void
.end method

.method public setExpirationDays(Ljava/lang/Integer;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->expirationDays:Ljava/lang/Integer;

    return-void
.end method

.method public setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->storageClass:Lcom/aliyun/oss/model/StorageClass;

    return-void
.end method

.method public withCreatedBeforeDate(Ljava/util/Date;)Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;
    .locals 0

    .line 129
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setCreatedBeforeDate(Ljava/util/Date;)V

    return-object p0
.end method

.method public withExpirationDays(Ljava/lang/Integer;)Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setExpirationDays(Ljava/lang/Integer;)V

    return-object p0
.end method

.method public withStrorageClass(Lcom/aliyun/oss/model/StorageClass;)Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;
    .locals 0

    .line 146
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/LifecycleRule$StorageTransition;->setStorageClass(Lcom/aliyun/oss/model/StorageClass;)V

    return-object p0
.end method
