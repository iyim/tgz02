.class public Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;
.super Ljava/lang/Object;
.source "DialogHelper.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "DialogHelper"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    .line 33
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Activity;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->b:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->b:Landroid/app/Dialog;

    return-object p1
.end method

.method public static makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2

    .line 180
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 184
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->optimized_toast:I

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 185
    sget v0, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->iv_symbol:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->message:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 187
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->simple_toast:I

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 190
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->tip_content:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    invoke-virtual {p3, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p0, 0x11

    const/4 p1, 0x0

    .line 194
    invoke-virtual {p3, p0, p1, p1}, Landroid/widget/Toast;->setGravity(III)V

    return-object p3
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Bundle;)V
    .locals 10

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Landroid/os/Bundle;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;Landroid/os/Bundle;)V
    .locals 13

    .line 65
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    move-object v10, p0

    .line 67
    iget-object v11, v10, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v12, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$5;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p0, p1, v0, v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 8

    .line 223
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->dismissProgressDialog()V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v7, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showProgressDialog(ZLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    invoke-virtual {p0, p2, v0, v1, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toast(Ljava/lang/String;II)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->a:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
