.class public Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;
.super Lcom/aliyun/oss/model/GenericRequest;
.source "GetBucketReplicationProgressRequest.java"


# instance fields
.field private replicationRuleID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/GenericRequest;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;->replicationRuleID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getReplicationRuleID()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;->replicationRuleID:Ljava/lang/String;

    return-object v0
.end method

.method public setReplicationRuleID(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;->replicationRuleID:Ljava/lang/String;

    return-void
.end method

.method public withReplicationRuleID(Ljava/lang/String;)Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/aliyun/oss/model/GetBucketReplicationProgressRequest;->setReplicationRuleID(Ljava/lang/String;)V

    return-object p0
.end method
