.class public Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;
.super Lcom/aliyun/oss/model/UdfGenericRequest;
.source "GetUdfApplicationLogRequest.java"


# instance fields
.field private endLines:Ljava/lang/Long;

.field private startTime:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 37
    iput-object p2, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->endLines:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->startTime:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/aliyun/oss/model/UdfGenericRequest;-><init>(Ljava/lang/String;)V

    .line 42
    iput-object p2, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->startTime:Ljava/util/Date;

    .line 43
    iput-object p3, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->endLines:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getEndLines()Ljava/lang/Long;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->endLines:Ljava/lang/Long;

    return-object v0
.end method

.method public getStartTime()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->startTime:Ljava/util/Date;

    return-object v0
.end method

.method public setEndLines(Ljava/lang/Long;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->endLines:Ljava/lang/Long;

    return-void
.end method

.method public setStartTime(Ljava/util/Date;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/aliyun/oss/model/GetUdfApplicationLogRequest;->startTime:Ljava/util/Date;

    return-void
.end method
