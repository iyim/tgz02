.class public Lcom/aliyun/oss/model/UserQos;
.super Lcom/aliyun/oss/model/GenericResult;
.source "UserQos.java"


# instance fields
.field private storageCapacity:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    .line 28
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/UserQos;->storageCapacity:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public getStorageCapacity()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/UserQos;->storageCapacity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasStorageCapacity()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/UserQos;->storageCapacity:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setStorageCapacity(I)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/aliyun/oss/model/UserQos;->storageCapacity:Ljava/lang/Integer;

    return-void
.end method
