.class Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$period:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;I)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->val$msg:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->val$period:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public run()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$layout;->vi_transient_notification:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x102000b

    .line 156
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    iget-object v3, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->val$msg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 159
    iget v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;->val$period:I

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    const/16 v0, 0x11

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 162
    :try_start_0
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DialogHelper.toast(): exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
