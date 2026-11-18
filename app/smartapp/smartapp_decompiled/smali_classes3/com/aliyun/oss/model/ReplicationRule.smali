.class public Lcom/aliyun/oss/model/ReplicationRule;
.super Ljava/lang/Object;
.source "ReplicationRule.java"


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

.field private replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

.field private targetBucketLocation:Ljava/lang/String;

.field private targetBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
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

    .line 74
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->objectPrefixList:Ljava/util/List;

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

    .line 85
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationActionList:Ljava/util/List;

    return-object v0
.end method

.method public getReplicationRuleID()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationRuleID:Ljava/lang/String;

    return-object v0
.end method

.method public getReplicationStatus()Lcom/aliyun/oss/model/ReplicationStatus;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

    return-object v0
.end method

.method public getTargetBucketLocation()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->targetBucketLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBucketName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->targetBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableHistoricalObjectReplication()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->enableHistoricalObjectReplication:Z

    return v0
.end method

.method public setEnableHistoricalObjectReplication(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/aliyun/oss/model/ReplicationRule;->enableHistoricalObjectReplication:Z

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

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->objectPrefixList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->objectPrefixList:Ljava/util/List;

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

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationActionList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 90
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationActionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setReplicationRuleID(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationRuleID:Ljava/lang/String;

    return-void
.end method

.method public setReplicationStatus(Lcom/aliyun/oss/model/ReplicationStatus;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/aliyun/oss/model/ReplicationRule;->replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

    return-void
.end method

.method public setTargetBucketLocation(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/aliyun/oss/model/ReplicationRule;->targetBucketLocation:Ljava/lang/String;

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/aliyun/oss/model/ReplicationRule;->targetBucketName:Ljava/lang/String;

    return-void
.end method
