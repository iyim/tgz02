.class public Lcom/alibaba/ailabs/genie/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field public static isShow:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0

    .line 16
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 1

    .line 96
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showInMainThread(Landroid/content/Context;I)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1

    .line 88
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const p2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 91
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static varargs show(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 144
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 2

    .line 129
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 131
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->showInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alibaba/ailabs/genie/utils/ToastUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    .line 76
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private static showInMainThread(Landroid/content/Context;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 106
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 107
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 108
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static showInMainThread(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 116
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 121
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;I)V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 65
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static varargs showLong(Landroid/content/Context;I[Ljava/lang/Object;)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 155
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 53
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 54
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;I)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public static showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    .line 31
    sget-boolean v0, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->isShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
