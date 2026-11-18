.class public Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;
.super Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
.source "TBActivityToast.java"


# instance fields
.field private mContext1:Landroid/app/Activity;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    return-void
.end method

.method public static makeText(Landroid/app/Activity;Ljava/lang/CharSequence;J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 44
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;-><init>(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v0, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setDuration(J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    return-object v0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method public getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public show()V
    .locals 3

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/taobao/uikit/extend/utils/DeviceUtils;->isHUWEIDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    .line 55
    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/PermissionHelper;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_0

    .line 58
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 59
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 61
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 62
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x1030004

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 64
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x51

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 66
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 68
    iget-object v1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 70
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->getInstance()Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->add(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->mContext1:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
