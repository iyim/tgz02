.class public Lcom/aliyun/oss/model/AppendObjectResult;
.super Lcom/aliyun/oss/model/GenericResult;
.source "AppendObjectResult.java"


# instance fields
.field private nextPosition:Ljava/lang/Long;

.field private objectCRC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/aliyun/oss/model/GenericResult;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getNextPosition()Ljava/lang/Long;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/aliyun/oss/model/AppendObjectResult;->nextPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getObjectCRC()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/aliyun/oss/model/AppendObjectResult;->objectCRC:Ljava/lang/String;

    return-object v0
.end method

.method public setNextPosition(Ljava/lang/Long;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/aliyun/oss/model/AppendObjectResult;->nextPosition:Ljava/lang/Long;

    return-void
.end method

.method public setObjectCRC(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/aliyun/oss/model/AppendObjectResult;->objectCRC:Ljava/lang/String;

    return-void
.end method
