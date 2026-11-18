.class public Lcom/taobao/android/tbsku/utils/SkuToastUtil;
.super Ljava/lang/Object;
.source "SkuToastUtil.java"


# static fields
.field public static final TYPE_CUSTOM:I = 0x4

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_FAILED:I = 0x3

.field public static final TYPE_SUCCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static showToast(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 16
    new-instance v0, Lcom/taobao/android/tbsku/utils/ToastView;

    invoke-direct {v0, p0}, Lcom/taobao/android/tbsku/utils/ToastView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const/16 v2, 0x10

    .line 19
    invoke-virtual {v1, v2, p0, p0}, Landroid/widget/Toast;->setGravity(III)V

    const/4 p0, 0x1

    .line 20
    invoke-virtual {v1, p0}, Landroid/widget/Toast;->setDuration(I)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/taobao/android/tbsku/utils/ToastView;->showWithIcon(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0, p2}, Lcom/taobao/android/tbsku/utils/ToastView;->showFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v0, p2}, Lcom/taobao/android/tbsku/utils/ToastView;->showSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_3
    invoke-virtual {v0, p2}, Lcom/taobao/android/tbsku/utils/ToastView;->showDefault(Ljava/lang/String;)V

    .line 36
    :goto_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method
