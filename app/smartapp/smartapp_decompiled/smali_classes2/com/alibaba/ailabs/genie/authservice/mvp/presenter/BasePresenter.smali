.class public Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/alibaba/ailabs/genie/authservice/mvp/view/IBaseView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field iBaseView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public attachView(Lcom/alibaba/ailabs/genie/authservice/mvp/view/IBaseView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;->iBaseView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public detachView()V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;->iBaseView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/mvp/presenter/BasePresenter;->iBaseView:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method
