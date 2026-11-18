.class public Lcom/uc/rmbsdk/export/RmbManager;
.super Ljava/lang/Object;
.source "RmbManager.java"

# interfaces
.implements Lcom/uc/rmbsdk/export/IRmbManager;
.implements Lcom/alibaba/mbg/upaas/RmbMessageCallback;
.implements Lcom/alibaba/mbg/upaas/UpaasManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/rmbsdk/export/RmbManager$Holder;
    }
.end annotation


# static fields
.field public static DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "RMB-SDK"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private final mBMHandler:Lcom/uc/rmbsdk/export/BMHandler;

.field private mContext:Landroid/content/Context;

.field private mDS:Ljava/lang/String;

.field private mDSType:Ljava/lang/String;

.field private mLastUpaasState:I

.field private final mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

.field private mRmbInterface:Lcom/uc/rmbsdk/export/IRmbInterface;

.field private final mUpaasStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/uc/rmbsdk/export/IUPaasStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-direct {v0}, Lcom/uc/rmbsdk/export/RmbDataHandler;-><init>()V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    .line 21
    new-instance v0, Lcom/uc/rmbsdk/export/BMHandler;

    invoke-direct {v0}, Lcom/uc/rmbsdk/export/BMHandler;-><init>()V

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mBMHandler:Lcom/uc/rmbsdk/export/BMHandler;

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mLastUpaasState:I

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mUpaasStateListeners:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uc/rmbsdk/export/RmbManager$1;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/uc/rmbsdk/export/RmbManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/uc/rmbsdk/export/RmbManager;
    .locals 1

    .line 40
    invoke-static {}, Lcom/uc/rmbsdk/export/RmbManager$Holder;->access$100()Lcom/uc/rmbsdk/export/RmbManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getAppId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getDS()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mDS:Ljava/lang/String;

    return-object v0
.end method

.method getDSType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mDSType:Ljava/lang/String;

    return-object v0
.end method

.method getRmbInterface()Lcom/uc/rmbsdk/export/IRmbInterface;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbInterface:Lcom/uc/rmbsdk/export/IRmbInterface;

    return-object v0
.end method

.method public getUpaasState()I
    .locals 1

    const-string/jumbo v0, "state"

    .line 196
    invoke-virtual {p0, v0}, Lcom/uc/rmbsdk/export/RmbManager;->getUpaasState(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUpaasState(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    .line 179
    :try_start_0
    invoke-static {}, Lcom/alibaba/mbg/upaas/UpaasManager;->getUpaasState()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 180
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 181
    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbInterface;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/uc/rmbsdk/export/RmbManager;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/uc/rmbsdk/export/RmbManager;->mAppId:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/uc/rmbsdk/export/RmbManager;->mDSType:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/uc/rmbsdk/export/RmbManager;->mDS:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbInterface:Lcom/uc/rmbsdk/export/IRmbInterface;

    .line 58
    invoke-static {}, Lcom/uc/base/net/unet/UNetContext;->getUNetManager()Lcom/alibaba/mbg/unet/UnetManager;

    move-result-object p1

    new-instance p2, Lcom/uc/rmbsdk/export/RmbManager$1;

    invoke-direct {p2, p0}, Lcom/uc/rmbsdk/export/RmbManager$1;-><init>(Lcom/uc/rmbsdk/export/RmbManager;)V

    invoke-interface {p1, p2}, Lcom/alibaba/mbg/unet/UnetManager;->callAfterInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method isOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v0, p1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getRmbBizInfo(Ljava/lang/String;)Lcom/uc/rmbsdk/export/RmbBizInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 212
    iget-object v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onReceivedData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v0, p1, p2}, Lcom/uc/rmbsdk/export/RmbDataHandler;->handleReceivedData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUpaasStateChange(I)V
    .locals 2

    .line 159
    iget v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mLastUpaasState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 163
    :cond_0
    iput p1, p0, Lcom/uc/rmbsdk/export/RmbManager;->mLastUpaasState:I

    .line 164
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mUpaasStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/rmbsdk/export/IUPaasStateListener;

    .line 165
    invoke-interface {v1, p1}, Lcom/uc/rmbsdk/export/IUPaasStateListener;->onUpaasStateChange(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mBMHandler:Lcom/uc/rmbsdk/export/BMHandler;

    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getAllRmbBizInfo()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uc/rmbsdk/export/BMHandler;->batchSync(Ljava/util/Collection;)V

    .line 170
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v0}, Lcom/uc/rmbsdk/export/RmbDataHandler;->trySyncAll()V

    .line 173
    :cond_2
    invoke-static {p1}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->statUpaasStateChanged(I)V

    return-void
.end method

.method public onVidFetched()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbInterface:Lcom/uc/rmbsdk/export/IRmbInterface;

    invoke-static {}, Lcom/alibaba/mbg/upaas/UpaasManager;->getVid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uc/rmbsdk/export/IRmbInterface;->onVidFetched(Ljava/lang/String;)V

    return-void
.end method

.method public online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/uc/rmbsdk/export/RmbManager;->online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public online(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v0, p1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getRmbBizInfo(Ljava/lang/String;)Lcom/uc/rmbsdk/export/RmbBizInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 112
    iget-object v2, v0, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iget-object v2, v0, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    .line 114
    iget-object v0, v0, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    move-object v2, v0

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/uc/rmbsdk/export/RmbDataHandler;->updateRmbBizInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p4

    const/4 v3, 0x1

    if-nez p4, :cond_1

    .line 121
    invoke-static {v3, p2, p3, p1}, Lcom/uc/rmbsdk/export/RmbStatsHelper;->statBMError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 125
    :cond_1
    iget-object p2, p0, Lcom/uc/rmbsdk/export/RmbManager;->mBMHandler:Lcom/uc/rmbsdk/export/BMHandler;

    iget-object p3, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {p3}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getAllRmbBizInfo()Ljava/util/Collection;

    move-result-object p3

    invoke-virtual {p2, p3, v2, v0}, Lcom/uc/rmbsdk/export/BMHandler;->batchSync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {p2, p1, v1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->trySync(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public registerChannel(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 92
    new-instance v0, Lcom/uc/rmbsdk/export/RmbBizInfo;

    invoke-direct {v0, p1, p2}, Lcom/uc/rmbsdk/export/RmbBizInfo;-><init>(Ljava/lang/String;Lcom/uc/rmbsdk/export/IRmbMessageListener;)V

    .line 93
    iget-object p2, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {p2, p1, v0}, Lcom/uc/rmbsdk/export/RmbDataHandler;->addRmbBizInfo(Ljava/lang/String;Lcom/uc/rmbsdk/export/RmbBizInfo;)V

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "param is illegal."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public registerUpaasStateListener(Lcom/uc/rmbsdk/export/IUPaasStateListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mUpaasStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterChannel(Ljava/lang/String;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v0, p1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->removeRmbBizInfo(Ljava/lang/String;)Lcom/uc/rmbsdk/export/RmbBizInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mBMHandler:Lcom/uc/rmbsdk/export/BMHandler;

    iget-object v1, p0, Lcom/uc/rmbsdk/export/RmbManager;->mRmbDataHandler:Lcom/uc/rmbsdk/export/RmbDataHandler;

    invoke-virtual {v1}, Lcom/uc/rmbsdk/export/RmbDataHandler;->getAllRmbBizInfo()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->userId:Ljava/lang/String;

    iget-object p1, p1, Lcom/uc/rmbsdk/export/RmbBizInfo;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/uc/rmbsdk/export/BMHandler;->batchSync(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unregisterUpaasStateListener(Lcom/uc/rmbsdk/export/IUPaasStateListener;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/uc/rmbsdk/export/RmbManager;->mUpaasStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
