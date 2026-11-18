.class public Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;
.super Ljava/lang/Object;
.source "KeyBoardProxyBuild.java"


# instance fields
.field private isInit:Z

.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

.field private mFilterViewByIds:[Landroid/view/View;

.field private mHideSoftByEditViewIds:[I

.field private mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivity:Ljava/lang/ref/WeakReference;

    .line 13
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mHideSoftByEditViewIds:[I

    .line 14
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mFilterViewByIds:[Landroid/view/View;

    const/4 v1, 0x0

    .line 15
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->isInit:Z

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivityKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;

    return-void
.end method


# virtual methods
.method public final build()Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/ActivityUtil;->isActivityLiving(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->isInit:Z

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mHideSoftByEditViewIds:[I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mFilterViewByIds:[Landroid/view/View;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;->newInstance(Landroid/app/Activity;[I[Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivityKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->isInit:Z

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivityKeyBoardProxy:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy;

    return-object v0

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Activity is not living err"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withActivity(Landroid/app/Activity;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mActivity:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public withFilterViewByIds([Landroid/view/View;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;
    .locals 0
    .param p1    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mFilterViewByIds:[Landroid/view/View;

    return-object p0
.end method

.method public withHideSoftByEditViewIds([I)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;
    .locals 0
    .param p1    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mHideSoftByEditViewIds:[I

    return-object p0
.end method

.method public withOnHideInputForceListener(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;)Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;
    .locals 0
    .param p1    # Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 38
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxyBuild;->mOnHideInputForceListener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardProxy$OnHideInputForceListener;

    return-object p0
.end method
