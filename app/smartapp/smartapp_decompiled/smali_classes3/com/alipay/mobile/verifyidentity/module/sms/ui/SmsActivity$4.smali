.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 1

    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

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

    .line 179
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$4;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$800(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V

    return-void
.end method
