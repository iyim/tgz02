.class public Lcom/taobao/android/dinamic/view/CompatibleView;
.super Lcom/taobao/android/dinamic/view/DFrameLayout;
.source "CompatibleView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamic/view/DFrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0, p2}, Lcom/taobao/android/dinamic/view/CompatibleView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
