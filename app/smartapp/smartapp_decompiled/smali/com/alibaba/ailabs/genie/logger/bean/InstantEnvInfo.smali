.class public Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;
.super Ljava/lang/Object;
.source "InstantEnvInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstantEnvInfo"


# instance fields
.field private mCurrentThreadId:Ljava/lang/String;

.field private mCurrentThreadName:Ljava/lang/String;

.field private mIsNetWorkAvailable:Z

.field private mIsWifiConnected:Z

.field private mMemoryFreeSize:Ljava/lang/String;

.field private mSdcardFreeSize:Ljava/lang/String;

.field private mWifiSignalLevel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsWifiConnected:Z

    .line 86
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtils;->getWifiSignalLevel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mWifiSignalLevel:Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/NetworkUtils;->isNetWorkAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsNetWorkAvailable:Z

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/logger/utils/ProductUtils;->getFreeMem(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KB"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mMemoryFreeSize:Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/alibaba/ailabs/genie/logger/utils/StorageUtil;->getAvailableSdCardSize()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mSdcardFreeSize:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadName:Ljava/lang/String;

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentThreadId()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentThreadName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoryFreeSize()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mMemoryFreeSize:Ljava/lang/String;

    return-object v0
.end method

.method public getSdcardFreeSize()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mSdcardFreeSize:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSignalLevel()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mWifiSignalLevel:Ljava/lang/String;

    return-object v0
.end method

.method public isNetWorkAvailable()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsNetWorkAvailable:Z

    return v0
.end method

.method public isWifiConnected()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsWifiConnected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsWifiConnected:"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WifiSignalLevel:"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mWifiSignalLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IsNetWorkAvailable:"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mIsNetWorkAvailable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MemoryFreeSize:"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mMemoryFreeSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SdcardFreeSize:"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mSdcardFreeSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CurrentThreadName:"

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "CurrentThreadId:"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/logger/bean/InstantEnvInfo;->mCurrentThreadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
