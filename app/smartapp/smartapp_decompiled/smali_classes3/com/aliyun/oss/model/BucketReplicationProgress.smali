.class public Lcom/aliyun/oss/model/BucketReplicationProgress;
.super Lcom/aliyun/oss/model/GenericResult;
.source "BucketReplicationProgress.java"


# instance fields
.field private enableHistoricalObjectReplication:Z

.field private historicalObjectProgress:F

.field private newObjectProgress:Ljava/util/Date;

.field private replicationRuleID:Ljava/lang/String;

.field private replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

.field private targetBucketLocation:Ljava/lang/String;

.field private targetBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getHistoricalObjectProgress()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->historicalObjectProgress:F

    return v0
.end method

.method public getNewObjectProgress()Ljava/util/Date;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->newObjectProgress:Ljava/util/Date;

    return-object v0
.end method

.method public getReplicationRuleID()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->replicationRuleID:Ljava/lang/String;

    return-object v0
.end method

.method public getReplicationStatus()Lcom/aliyun/oss/model/ReplicationStatus;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

    return-object v0
.end method

.method public getTargetBucketLocation()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->targetBucketLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBucketName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->targetBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableHistoricalObjectReplication()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->enableHistoricalObjectReplication:Z

    return v0
.end method

.method public setEnableHistoricalObjectReplication(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->enableHistoricalObjectReplication:Z

    return-void
.end method

.method public setHistoricalObjectProgress(F)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->historicalObjectProgress:F

    return-void
.end method

.method public setNewObjectProgress(Ljava/util/Date;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->newObjectProgress:Ljava/util/Date;

    return-void
.end method

.method public setReplicationRuleID(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->replicationRuleID:Ljava/lang/String;

    return-void
.end method

.method public setReplicationStatus(Lcom/aliyun/oss/model/ReplicationStatus;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->replicationStatus:Lcom/aliyun/oss/model/ReplicationStatus;

    return-void
.end method

.method public setTargetBucketLocation(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->targetBucketLocation:Ljava/lang/String;

    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/aliyun/oss/model/BucketReplicationProgress;->targetBucketName:Ljava/lang/String;

    return-void
.end method
