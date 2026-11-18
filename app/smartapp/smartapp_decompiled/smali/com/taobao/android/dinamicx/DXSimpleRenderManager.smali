.class public Lcom/taobao/android/dinamicx/DXSimpleRenderManager;
.super Lcom/taobao/android/dinamicx/DXRenderManager;
.source "DXSimpleRenderManager.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXRenderManager;-><init>()V

    .line 17
    new-instance v0, Lcom/taobao/android/dinamicx/render/diff/DXSimplePipelineDiff;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/render/diff/DXSimplePipelineDiff;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXSimpleRenderManager;->absDiff:Lcom/taobao/android/dinamicx/render/diff/DXAbsDiff;

    return-void
.end method
