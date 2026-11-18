.class public Lcom/alibaba/ailabs/genie/logger/export/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# instance fields
.field private mCacheInterval:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "minCacheInterval"
    .end annotation
.end field

.field private mMaxUploadInterval:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "maxUploadInterval"
    .end annotation
.end field

.field private mMinUploadInterval:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "minUploadInterval"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1e

    .line 11
    iput v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mMinUploadInterval:I

    const/16 v0, 0x78

    .line 14
    iput v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mMaxUploadInterval:I

    const/4 v0, 0x5

    .line 17
    iput v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mCacheInterval:I

    return-void
.end method


# virtual methods
.method public mCacheInterval()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mCacheInterval:I

    return v0
.end method

.method public maxUploadInterval()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mMaxUploadInterval:I

    return v0
.end method

.method public minUploadInterval()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/export/LogConfig;->mMinUploadInterval:I

    return v0
.end method
