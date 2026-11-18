.class public Lcom/uc/rmbsdk/export/RmbReceivedData;
.super Ljava/lang/Object;
.source "RmbReceivedData.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mChannelId:Ljava/lang/String;

.field private mData:Ljava/lang/String;

.field private mIsSorted:Z

.field private mPushId:Ljava/lang/String;

.field private mSeq:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mIsSorted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mIsSorted:Z

    .line 23
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mAppId:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mChannelId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mPushId:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mData:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getPushId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mPushId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mSeq:J

    return-wide v0
.end method

.method public isSorted()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mIsSorted:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mAppId:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mData:Ljava/lang/String;

    return-void
.end method

.method public setIsSorted(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mIsSorted:Z

    return-void
.end method

.method public setPushId(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mPushId:Ljava/lang/String;

    return-void
.end method

.method public setSeq(J)V
    .locals 0

    .line 59
    iput-wide p1, p0, Lcom/uc/rmbsdk/export/RmbReceivedData;->mSeq:J

    return-void
.end method
