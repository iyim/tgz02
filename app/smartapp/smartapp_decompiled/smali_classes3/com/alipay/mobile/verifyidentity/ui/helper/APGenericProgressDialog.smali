.class public Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;
.super Landroid/app/AlertDialog;
.source "APGenericProgressDialog.java"


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/lang/CharSequence;

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
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

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private a()V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->e:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->generic_progress_dialog:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setContentView(I)V

    const p1, 0x102000d

    .line 32
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    .line 33
    sget p1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->message:I

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->b:Landroid/widget/TextView;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a()V

    .line 36
    iget-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->d:Z

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->setIndeterminate(Z)V

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->a:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto :goto_0

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->d:Z

    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->c:Ljava/lang/CharSequence;

    return-void
.end method

.method public setProgressVisiable(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/APGenericProgressDialog;->e:Z

    return-void
.end method
