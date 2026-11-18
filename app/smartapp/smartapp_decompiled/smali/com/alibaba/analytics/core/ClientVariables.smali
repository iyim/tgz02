.class public Lcom/alibaba/analytics/core/ClientVariables;
.super Ljava/lang/Object;
.source "ClientVariables.java"


# static fields
.field public static final s_instance:Lcom/alibaba/analytics/core/ClientVariables;


# instance fields
.field private volatile appKey:Ljava/lang/String;

.field private volatile mContext:Landroid/content/Context;

.field private volatile mIs1010AutoTrackClosed:Z

.field private volatile mIsAliyunOSPlatform:Z

.field private volatile mOutsideTTID:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/alibaba/analytics/core/ClientVariables;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/ClientVariables;-><init>()V

    sput-object v0, Lcom/alibaba/analytics/core/ClientVariables;->s_instance:Lcom/alibaba/analytics/core/ClientVariables;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIs1010AutoTrackClosed:Z

    .line 13
    iput-boolean v1, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIsAliyunOSPlatform:Z

    .line 14
    iput-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mOutsideTTID:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mTimestamp:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alibaba/analytics/core/ClientVariables;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/analytics/core/ClientVariables;->s_instance:Lcom/alibaba/analytics/core/ClientVariables;

    return-object v0
.end method


# virtual methods
.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getOutsideTTID()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mOutsideTTID:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public is1010AutoTrackClosed()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIs1010AutoTrackClosed:Z

    return v0
.end method

.method public isAliyunOSPlatform()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIsAliyunOSPlatform:Z

    return v0
.end method

.method public set1010AutoTrackClose()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIs1010AutoTrackClosed:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/alibaba/analytics/core/ClientVariables;->appKey:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/analytics/core/ClientVariables;->mContext:Landroid/content/Context;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setOutsideTTID(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/analytics/core/ClientVariables;->mOutsideTTID:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setToAliyunOSPlatform()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/alibaba/analytics/core/ClientVariables;->mIsAliyunOSPlatform:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
