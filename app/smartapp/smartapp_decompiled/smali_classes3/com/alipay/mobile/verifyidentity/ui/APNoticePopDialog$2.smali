.class Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;
.super Ljava/lang/Object;
.source "APNoticePopDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)V
    .locals 1

    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

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
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->dismiss()V

    .line 156
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;->access$100(Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog;)Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alipay/mobile/verifyidentity/ui/APNoticePopDialog$OnClickPositiveListener;->onClick()V

    :cond_0
    return-void
.end method
