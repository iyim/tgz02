.class public abstract Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
.super Ljava/lang/Object;
.source "IMvpPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mMvpView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public attachMvpView(Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->mMvpView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public detachMvpView()V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->mMvpView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->mMvpView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public getMvpView()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;->mMvpView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
