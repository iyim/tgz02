.class public Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SecureFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;
    }
.end annotation


# instance fields
.field private mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    return-void
.end method


# virtual methods
.method public sendAccessibilityEvent(I)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p0, p1}, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;->handleAccessiBilityEvent(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 51
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 37
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method public setSendAccessiBilityEventListener(Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout;->mSabEventListener:Lcom/alipay/android/app/safepaybase/alikeyboard/SecureFrameLayout$SendAccessiBilityEventListener;

    return-void
.end method
