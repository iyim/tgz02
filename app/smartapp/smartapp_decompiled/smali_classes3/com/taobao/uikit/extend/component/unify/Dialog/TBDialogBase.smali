.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;
.super Landroid/app/Dialog;
.source "TBDialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private mShowListener:Landroid/content/DialogInterface$OnShowListener;

.field protected view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;->view:Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnShowListener;->onShow(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 51
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessError;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 63
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "setContentView() is not supported in MaterialDialog. Specify a custom view in the Builder instead."

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBDialogBase;->mShowListener:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method

.method protected final setOnShowListenerInternal()V
    .locals 0

    .line 31
    invoke-super {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final setViewInternal(Landroid/view/View;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected final setViewInternal(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
