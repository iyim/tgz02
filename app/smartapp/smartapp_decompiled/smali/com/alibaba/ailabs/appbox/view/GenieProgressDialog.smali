.class public final Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;
.super Ljava/lang/Object;
.source "GenieProgressDialog.java"


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog$MyOnDismissListener;
    }
.end annotation


# static fields
.field private static final PROGRESS_STYLE_DEFAULT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GenieProgressDialog"


# instance fields
.field private isShown:Z

.field private mHostActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProgressStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mHostActivity:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    .line 57
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog$MyOnDismissListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog$MyOnDismissListener;-><init>(Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mHostActivity:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 p1, 0x2

    .line 65
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog$MyOnDismissListener;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog$MyOnDismissListener;-><init>(Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    return p0
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private isActivityLiving(Ljava/lang/ref/WeakReference;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 129
    :cond_1
    sget-object v1, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActivityLiving() called with: activity = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isLiving = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 107
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->TAG:Ljava/lang/String;

    const-string v1, "dismiss() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 114
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    .line 115
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public getProgressStyle()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setProgressStyle(I)V
    .locals 1

    .line 79
    iput p1, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressStyle:I

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    return-void
.end method

.method public show()V
    .locals 2

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mHostActivity:Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isActivityLiving(Ljava/lang/ref/WeakReference;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "show() called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 99
    :try_start_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->isShown:Z

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/view/GenieProgressDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
