.class public Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;
.super Landroid/app/Dialog;
.source "APNoticePopDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;,
        Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/CharSequence;

.field private j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

.field private k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/RelativeLayout;

.field private p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 48
    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/text/Spanned;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .line 53
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->q:Z

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 54
    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 59
    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 1

    .line 64
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$style;->dialog_with_no_title_style_trans_bg:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    .line 36
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->q:Z

    .line 65
    invoke-direct/range {p0 .. p7}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 174
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 175
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result p0

    return p0
.end method

.method private a()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->h:Ljava/lang/CharSequence;

    .line 71
    iput-object p3, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->i:Ljava/lang/CharSequence;

    .line 72
    iput-object p4, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->l:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->m:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->b:Landroid/view/LayoutInflater;

    .line 75
    iput-boolean p6, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    if-eqz p7, :cond_0

    const-string p1, "alertTextColor"

    .line 77
    invoke-virtual {p7, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->q:Z

    :cond_0
    return-void
.end method

.method private a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V
    .locals 1

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x8

    .line 117
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    return-object p0
.end method


# virtual methods
.method public getCancelBtn()Landroid/widget/Button;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    return-object v0
.end method

.method public getDialogBg()Landroid/widget/RelativeLayout;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->o:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getEnsureBtn()Landroid/widget/Button;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public getMsg()Landroid/widget/TextView;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 83
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 84
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->b:Landroid/view/LayoutInflater;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->notice_dialog_pop:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    .line 85
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->ensure:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    .line 86
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->cancel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    .line 87
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->titleTip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 88
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    .line 89
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->button_ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->n:Landroid/widget/LinearLayout;

    .line 90
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->dialog_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->o:Landroid/widget/RelativeLayout;

    .line 91
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->q:Z

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    const-string v0, "#999999"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 93
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/high16 v0, 0x41900000    # 18.0f

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextSize(F)V

    .line 94
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextSize(F)V

    .line 95
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APTextView;->setTextColor(I)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->f:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->h:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->g:Lcom/alipay/mobile/verifyidentity/ui/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->i:Ljava/lang/CharSequence;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Lcom/alipay/mobile/verifyidentity/ui/APTextView;Ljava/lang/CharSequence;)V

    .line 99
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->p:Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setCanceledOnTouchOutside(Z)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a()V

    return-void
.end method

.method public setNegativeListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->k:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;

    return-void
.end method

.method public setNegativeTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->d:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setPositiveListener(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->j:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    return-void
.end method

.method public setPositiveTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->e:Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 165
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->setContentView(Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$dimen;->notice_dialog_width_margin_window:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 169
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
