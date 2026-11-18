.class final Lcom/alibaba/android/umbrella/link/LinkLogEntity;
.super Ljava/lang/Object;
.source "LinkLogEntity.java"


# static fields
.field static final LOG_LEVEL_DEBUG:I = 0x270f

.field static final LOG_LEVEL_ERROR:I = 0x1

.field static final LOG_LEVEL_INFO:I = 0x0

.field static final LOG_STAGE_BEGIN:I = 0x1

.field static final LOG_STAGE_DEFAULT:I = 0x0

.field static final LOG_STAGE_END:I = 0x2


# instance fields
.field private childBizName:Ljava/lang/String;

.field private dimMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private extData:Lcom/alibaba/android/umbrella/link/LinkLogExtData;

.field private featureType:Ljava/lang/String;

.field private launchId:Ljava/lang/String;

.field private logLevel:I

.field private logStage:I

.field private mainBizName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private refContext:Lcom/alibaba/android/umbrella/link/UMRefContext;

.field private threadId:Ljava/lang/String;

.field private timestamp:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->mainBizName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->childBizName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->launchId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->refContext:Lcom/alibaba/android/umbrella/link/UMRefContext;

    .line 44
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->pageName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->threadId:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->featureType:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorCode:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorMsg:Ljava/lang/String;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logLevel:I

    .line 51
    iput v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logStage:I

    .line 53
    iput-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->dimMap:Ljava/util/Map;

    .line 54
    iput-object v1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->extData:Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->timestamp:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getChildBizName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->childBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getDimMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->dimMap:Ljava/util/Map;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtData()Lcom/alibaba/android/umbrella/link/LinkLogExtData;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->extData:Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    return-object v0
.end method

.method public getFeatureType()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->featureType:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->launchId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->refContext:Lcom/alibaba/android/umbrella/link/UMRefContext;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/android/umbrella/link/UMRefContext;->getLinkId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLogLevel()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logLevel:I

    return v0
.end method

.method public getLogStage()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logStage:I

    return v0
.end method

.method public getMainBizName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->mainBizName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRefContext()Lcom/alibaba/android/umbrella/link/UMRefContext;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->refContext:Lcom/alibaba/android/umbrella/link/UMRefContext;

    return-object v0
.end method

.method public getThreadId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->threadId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method setBizName(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->mainBizName:Ljava/lang/String;

    if-nez p2, :cond_1

    return-object p0

    .line 145
    :cond_1
    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->childBizName:Ljava/lang/String;

    return-object p0
.end method

.method setDimMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alibaba/android/umbrella/link/LinkLogEntity;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->dimMap:Ljava/util/Map;

    :cond_1
    :goto_0
    return-object p0
.end method

.method setErrorCode(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 196
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorCode:Ljava/lang/String;

    if-nez p2, :cond_1

    return-object p0

    .line 203
    :cond_1
    iput-object p2, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->errorMsg:Ljava/lang/String;

    return-object p0
.end method

.method setExtData(Lcom/alibaba/android/umbrella/link/LinkLogExtData;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .param p1    # Lcom/alibaba/android/umbrella/link/LinkLogExtData;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p1}, Lcom/alibaba/android/umbrella/link/LinkLogExtData;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->extData:Lcom/alibaba/android/umbrella/link/LinkLogExtData;

    :cond_1
    :goto_0
    return-object p0
.end method

.method setFeatureType(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 190
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->featureType:Ljava/lang/String;

    return-object p0
.end method

.method setLaunchId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 151
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->launchId:Ljava/lang/String;

    return-object p0
.end method

.method setLogLevel(I)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 209
    iput p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logLevel:I

    return-object p0
.end method

.method setLogStage(I)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 215
    iput p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->logStage:I

    return-object p0
.end method

.method setPageName(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 169
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method setRefContext(Lcom/alibaba/android/umbrella/link/UMRefContext;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 0
    .param p1    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->refContext:Lcom/alibaba/android/umbrella/link/UMRefContext;

    return-object p0
.end method

.method setThreadId(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/LinkLogEntity;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 178
    invoke-static {p1}, Lcom/alibaba/android/umbrella/link/UMStringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 181
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/umbrella/link/LinkLogEntity;->threadId:Ljava/lang/String;

    return-object p0
.end method
