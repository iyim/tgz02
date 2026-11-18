.class public Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
.super Ljava/lang/Object;
.source "TBToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/unify/Toast/TBToast$Duration;,
        Lcom/taobao/uikit/extend/component/unify/Toast/TBToast$OnClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final ANIMATION_FADE_DURATION:I = 0xe6

.field private static final ERROR_CONTEXTNULL:Ljava/lang/String; = " - You cannot use a null context."

.field private static final ERROR_DURATIONTOOLONG:Ljava/lang/String; = " - You should NEVER specify a duration greater than four and a half seconds for a TBToast."

.field private static final TAG:Ljava/lang/String; = "TBToast"


# instance fields
.field protected mAnimView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDuration:J

.field private mGravity:I

.field private mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

.field protected mLongClicked:Z

.field private mMessage2TextView:Landroid/widget/TextView;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mToastView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x51

    .line 75
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mGravity:I

    const-wide/16 v0, 0xbb8

    .line 76
    iput-wide v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mDuration:J

    const/4 v0, 0x0

    .line 77
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mXOffset:I

    .line 78
    iput v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mYOffset:I

    .line 87
    iput-boolean v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mLongClicked:Z

    if-eqz p1, :cond_0

    .line 97
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 102
    sget v1, Lcom/taobao/uikit/extend/R$layout;->uik_toast:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    .line 104
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 106
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManager:Landroid/view/WindowManager;

    .line 109
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_toast:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mAnimView:Landroid/view/View;

    .line 111
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_toast_message:I

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    .line 113
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_toast_message2:I

    .line 114
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessage2TextView:Landroid/widget/TextView;

    .line 115
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    sget v0, Lcom/taobao/uikit/extend/R$id;->uik_toast_icon:I

    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    .line 119
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 120
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 121
    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    const v0, 0x3dcccccd    # 0.1f

    mul-float p1, p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mYOffset:I

    return-void

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TBToast - You cannot use a null context."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cancelAllTBToast()V
    .locals 1

    .line 413
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->getInstance()Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->cancelAllTBToasts()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0xbb8

    .line 378
    invoke-static {p0, p1, v0, v1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 390
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 391
    invoke-static {}, Lcom/taobao/uikit/extend/utils/DeviceUtils;->isHUWEIDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Lcom/taobao/uikit/extend/utils/PermissionHelper;->isNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    .line 395
    new-instance p2, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;

    nop

    nop

    invoke-direct {p2, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBActivityToast;-><init>(Landroid/app/Activity;)V

    .line 396
    invoke-virtual {p2, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 p0, 0xbb8

    .line 397
    invoke-virtual {p2, p0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setDuration(J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    return-object p2

    .line 401
    :cond_0
    new-instance v0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    invoke-direct {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;-><init>(Landroid/content/Context;)V

    .line 402
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v0, p2, p3}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setDuration(J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 319
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->getInstance()Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->removeTBToast(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 295
    iget-wide v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mDuration:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDuration(J)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 3

    const-wide/16 v0, 0x1194

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-string p1, "TBToast"

    const-string p2, "TBToast - You should NEVER specify a duration greater than four and a half seconds for a TBToast."

    .line 274
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-wide v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mDuration:J

    goto :goto_0

    .line 280
    :cond_0
    iput-wide p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mDuration:J

    :goto_0
    return-object p0
.end method

.method public setGravity(III)V
    .locals 0

    .line 308
    iput p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mGravity:I

    .line 309
    iput p2, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mXOffset:I

    .line 310
    iput p3, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mYOffset:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setText2(Ljava/lang/CharSequence;)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessage2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessage2TextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessage2TextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public setTextColor(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setToastIcon(I)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->setToastIcon(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;

    :cond_0
    return-object p0
.end method

.method public setToastIcon(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setVisibility(I)V

    :cond_0
    return-object p0
.end method

.method public setToastIconColor(I)Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mIconView:Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/taobao/uikit/extend/feature/view/TIconFontTextView;->setTextColor(I)V

    :cond_0
    return-object p0
.end method

.method public show()V
    .locals 3

    .line 126
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 128
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 129
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const v1, 0x400a8

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    .line 134
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 135
    sget v1, Lcom/taobao/uikit/extend/R$style;->uik_toastAnim:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 137
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 139
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mXOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 140
    iget v1, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mYOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 142
    invoke-static {}, Lcom/taobao/uikit/extend/utils/DeviceUtils;->isMeizuDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/PermissionHelper;->isMezuFloatWindowOpAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 145
    :cond_0
    invoke-static {}, Lcom/taobao/uikit/extend/utils/DeviceUtils;->isMIUIDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/uikit/extend/utils/PermissionHelper;->isMiuiFloatWindowOpAllowed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 148
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 150
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->getInstance()Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/taobao/uikit/extend/component/unify/Toast/TBToastManager;->add(Lcom/taobao/uikit/extend/component/unify/Toast/TBToast;)V

    :goto_0
    return-void
.end method
