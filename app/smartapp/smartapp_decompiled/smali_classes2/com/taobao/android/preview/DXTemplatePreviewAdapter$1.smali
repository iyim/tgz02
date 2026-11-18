.class Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;
.super Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;
.source "DXTemplatePreviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->registerDXLifeCycle(Lcom/taobao/android/dinamicx/DXRootView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

.field final synthetic val$dx3RootView:Lcom/taobao/android/dinamicx/DXRootView;


# direct methods
.method constructor <init>(Lcom/taobao/android/preview/DXTemplatePreviewAdapter;Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iput-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->val$dx3RootView:Lcom/taobao/android/dinamicx/DXRootView;

    invoke-direct {p0}, Lcom/taobao/android/dinamicx/DXRootView$DXRootViewLifeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object v0, v0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewAppear(Lcom/taobao/android/dinamicx/DXRootView;)V

    return-void
.end method

.method protected onDetachedFromWindow(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object v0, v0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewDisappear(Lcom/taobao/android/dinamicx/DXRootView;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    .line 182
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object p1, p1, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->val$dx3RootView:Lcom/taobao/android/dinamicx/DXRootView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewAppear(Lcom/taobao/android/dinamicx/DXRootView;)V

    goto :goto_0

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object p1, p1, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p1

    iget-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->val$dx3RootView:Lcom/taobao/android/dinamicx/DXRootView;

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewDisappear(Lcom/taobao/android/dinamicx/DXRootView;)V

    :goto_0
    return-void
.end method

.method protected onWindowVisibilityChanged(Lcom/taobao/android/dinamicx/DXRootView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 174
    iget-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object p2, p2, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewAppear(Lcom/taobao/android/dinamicx/DXRootView;)V

    goto :goto_0

    .line 176
    :cond_0
    iget-object p2, p0, Lcom/taobao/android/preview/DXTemplatePreviewAdapter$1;->this$0:Lcom/taobao/android/preview/DXTemplatePreviewAdapter;

    iget-object p2, p2, Lcom/taobao/android/preview/DXTemplatePreviewAdapter;->engineRouter:Lcom/taobao/android/dinamicx/DinamicXEngineRouter;

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DinamicXEngineRouter;->getEngine()Lcom/taobao/android/dinamicx/DinamicXEngine;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/taobao/android/dinamicx/DinamicXEngine;->onRootViewDisappear(Lcom/taobao/android/dinamicx/DXRootView;)V

    :goto_0
    return-void
.end method
