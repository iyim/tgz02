.class public Lcom/aliyun/oss/model/LiveRecord;
.super Ljava/lang/Object;
.source "LiveRecord.java"


# instance fields
.field private endDate:Ljava/util/Date;

.field private remoteAddress:Ljava/lang/String;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveRecord;->startDate:Ljava/util/Date;

    .line 31
    iput-object p2, p0, Lcom/aliyun/oss/model/LiveRecord;->endDate:Ljava/util/Date;

    .line 32
    iput-object p3, p0, Lcom/aliyun/oss/model/LiveRecord;->remoteAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndDate()Ljava/util/Date;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveRecord;->endDate:Ljava/util/Date;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveRecord;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/aliyun/oss/model/LiveRecord;->startDate:Ljava/util/Date;

    return-object v0
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveRecord;->endDate:Ljava/util/Date;

    return-void
.end method

.method public setRemoteAddress(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveRecord;->remoteAddress:Ljava/lang/String;

    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/aliyun/oss/model/LiveRecord;->startDate:Ljava/util/Date;

    return-void
.end method
