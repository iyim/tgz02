.class Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;
.super Ljava/lang/Object;
.source "DialogHelper.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickNegativeListener;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;)V
    .locals 1

    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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


# virtual methods
.method public onClick()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->val$negativeListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1$1;->this$1:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogHelper;)Landroid/app/Dialog;

    move-result-object v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
