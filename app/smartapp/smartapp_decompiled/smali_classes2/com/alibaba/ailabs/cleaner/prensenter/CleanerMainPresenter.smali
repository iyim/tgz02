.class public Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;
.super Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;
.source "CleanerMainPresenter.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IPresenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter<",
        "Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;",
        ">;",
        "Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IPresenter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CleanerMainPresenter"


# instance fields
.field private mCleanerMainAdapter:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mCleanerMainAdapter:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    return-object p0
.end method

.method private initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mView:Lcom/alibaba/ailabs/base/mvp/contract/IBaseView;

    check-cast v0, Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/cleaner/contract/CleanerMainContract$IView;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 43
    invoke-super {p0}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->onCreate()V

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    invoke-direct {v0}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mCleanerMainAdapter:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->mCleanerMainAdapter:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    invoke-direct {p0, v0, v1}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;->initViewContent(Landroid/app/Activity;Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;)V

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter$1;-><init>(Lcom/alibaba/ailabs/cleaner/prensenter/CleanerMainPresenter;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/appbox/utils/ThreadPool;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "CleanerMainPresenter"

    const-string v1, "onDestroy"

    .line 91
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->onDestroy()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResume()V
    .locals 0

    .line 80
    invoke-super {p0}, Lcom/alibaba/ailabs/base/mvp/presenter/BasePresenter;->onResume()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
