.class public abstract Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;
.super Landroid/app/Activity;
.source "AbstractMvpActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;",
        "P:",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter<",
        "TV;>;>",
        "Landroid/app/Activity;"
    }
.end annotation


# instance fields
.field private mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected abstract createPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public getPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->createPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    if-eqz p1, :cond_1

    .line 31
    move-object v0, p0

    check-cast v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->attachMvpView(Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/AbstractMvpActivity;->mPresenter:Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->detachMvpView()V

    :cond_0
    return-void
.end method
