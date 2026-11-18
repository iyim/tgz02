.class public final enum Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;
.super Ljava/lang/Enum;
.source "AddBucketReplicationRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aliyun/oss/model/AddBucketReplicationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReplicationAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

.field public static final enum ABORT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

.field public static final enum ALL:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

.field public static final enum DELETE:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

.field public static final enum PUT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;


# instance fields
.field private replicationAction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    new-instance v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1, v2}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->ALL:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    .line 40
    new-instance v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    const/4 v2, 0x1

    const-string v3, "PUT"

    invoke-direct {v0, v3, v2, v3}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->PUT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    .line 45
    new-instance v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    const/4 v3, 0x2

    const-string v4, "DELETE"

    invoke-direct {v0, v4, v3, v4}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->DELETE:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    .line 50
    new-instance v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    const/4 v4, 0x3

    const-string v5, "ABORT"

    invoke-direct {v0, v5, v4, v5}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->ABORT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    const/4 v0, 0x4

    .line 30
    new-array v0, v0, [Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    sget-object v5, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->ALL:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    aput-object v5, v0, v1

    sget-object v1, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->PUT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->DELETE:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->ABORT:Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->$VALUES:[Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->replicationAction:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;
    .locals 5

    .line 64
    invoke-static {}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->values()[Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    invoke-virtual {v3}, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;
    .locals 1

    .line 30
    const-class v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;
    .locals 1

    .line 30
    sget-object v0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->$VALUES:[Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    invoke-virtual {v0}, [Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/aliyun/oss/model/AddBucketReplicationRequest$ReplicationAction;->replicationAction:Ljava/lang/String;

    return-object v0
.end method
