.class public Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
.super Ljava/lang/Object;
.source "UltronInstanceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;
    }
.end annotation


# static fields
.field public static final TYPE_REFRESH_AFTER_DOWNLOAD:I = 0x2

.field public static final TYPE_REFRESH_NEXT_CREATE:I = 0x1


# instance fields
.field private componentDebugMark:I

.field private containerRefreshType:I

.field private exposureStrategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

.field private headerViewCount:I

.field private mGzip:Z

.field private mModuleName:Ljava/lang/String;

.field private mUseRenderErrorAlert:Z

.field private notContainerReuse:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mGzip:Z

    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mUseRenderErrorAlert:Z

    const/16 v1, 0x3e9

    .line 14
    iput v1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->componentDebugMark:I

    .line 16
    iput-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->notContainerReuse:Z

    .line 17
    iput v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->headerViewCount:I

    return-void
.end method


# virtual methods
.method public exposureStrategy(Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->exposureStrategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    return-void
.end method

.method public getComponentDebugMark()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->componentDebugMark:I

    return v0
.end method

.method public getContainerRefreshType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 56
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->containerRefreshType:I

    return v0
.end method

.method public getExposureStrategy()Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->exposureStrategy:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    return-object v0
.end method

.method public getGzip()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mGzip:Z

    return v0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->headerViewCount:I

    return v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public gzip(Z)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mGzip:Z

    return-object p0
.end method

.method public headerViewCount(I)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0

    .line 105
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->headerViewCount:I

    return-object p0
.end method

.method public isNotContainerReuse()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->notContainerReuse:Z

    return v0
.end method

.method public isUseRenderErrorAlert()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mUseRenderErrorAlert:Z

    return v0
.end method

.method public moduleName(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public notContainerReuse(Z)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->notContainerReuse:Z

    return-object p0
.end method

.method public setComponentDebugMark(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->componentDebugMark:I

    return-void
.end method

.method public setContainerRefreshType(I)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    iput p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->containerRefreshType:I

    return-object p0
.end method

.method public useRenderErrorAlert(Z)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;->mUseRenderErrorAlert:Z

    return-object p0
.end method
