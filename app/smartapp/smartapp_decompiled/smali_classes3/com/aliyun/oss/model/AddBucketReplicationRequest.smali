.class public Lcom/aliyun/oss/model/AddBucketReplicationRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "AddBucketReplicationRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;
    }
.end annotation


# instance fields
.field private enableHistoricalObjectReplication:Z

.field private objectPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replicationActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;",
            ">;"
        }
    .end annotation
.end field

.field private replicationRuleID:Ljava/lang/String;

.field private targetBucketLocation:Ljava/lang/String;

.field private targetBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 134
    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationRuleID:Ljava/lang/String;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->enableHistoricalObjectReplication:Z

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->objectPrefixList:Ljava/util/List;

    .line 139
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationActionList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getObjectPrefixList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->objectPrefixList:Ljava/util/List;

    return-object v0
.end method

.method public getReplicationActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationActionList:Ljava/util/List;

    return-object v0
.end method

.method public getReplicationRuleID()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationRuleID:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBucketLocation()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->targetBucketLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBucketName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->targetBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableHistoricalObjectReplication()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->enableHistoricalObjectReplication:Z

    return v0
.end method

.method public setEnableHistoricalObjectReplication(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->enableHistoricalObjectReplication:Z

    return-void
.end method

.method public setObjectPrefixList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->objectPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->objectPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setReplicationActionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;",
            ">;)V"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 129
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setReplicationRuleID(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->replicationRuleID:Ljava/lang/String;

    return-void
.end method

.method public setTargetBucketLocation(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->targetBucketLocation:Ljava/lang/String;

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest;->targetBucketName:Ljava/lang/String;

    return-void
.end method
