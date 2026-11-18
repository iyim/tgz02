.class public Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;
.super Ljava/lang/Object;
.source "BasePresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/base/mvp/contract/IBasePresenter;"
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TV;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    .line 16
    iput-object p2, p0, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->mActivity:Landroid/app/Activity;

    .line 55
    iput-object v0, p0, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    return-void
.end method

.method public onPause()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onReStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStart()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onStop()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
