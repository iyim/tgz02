.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;
.super Ljava/lang/Object;
.source "DataLoaderResult.java"


# instance fields
.field mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

.field mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getLoaderContext()Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    return-object v0
.end method

.method public getTempRenderInfo()Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-object v0
.end method

.method public hasError()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;->hasError:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public setLoaderContext(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->mLoaderContext:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    return-void
.end method

.method public setTempRenderInfo(Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderResult;->mTempRenderInfo:Lcom/alibaba/android/ultron/engine/template/TempRenderInfo;

    return-void
.end method
