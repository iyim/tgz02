.class public abstract Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;
.super Lcom/alibaba/ailabs/genie/utils/task/UITask;
.source "ActivityTask.java"


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/genie/utils/task/Task$SimpleCallback;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/utils/task/Task$SimpleCallback;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;-><init>(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V
    .locals 0

    .line 22
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/utils/task/UITask;-><init>(Lcom/alibaba/ailabs/genie/utils/task/Task$Callback;)V

    if-eqz p1, :cond_0

    .line 24
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mActivity:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mWm:Landroid/view/WindowManager;

    .line 27
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 28
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p2, 0x2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected getDefaultParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method protected getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/ActivityTask;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method
