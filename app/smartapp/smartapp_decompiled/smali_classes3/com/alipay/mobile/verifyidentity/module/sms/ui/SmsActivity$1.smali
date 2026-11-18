.class Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;
.super Ljava/lang/Object;
.source "SmsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

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
.method public onGlobalLayout()V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$100(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    sget v1, Lcom/alipay/android/phone/mobilecommon/verifyidentity/R$id;->titleBar:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$202(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;I)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$000(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$200(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 83
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v2, :cond_1

    return-void

    .line 86
    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;->access$300(Lcom/alipay/mobile/verifyidentity/module/sms/ui/SmsActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->forceLayout()V

    return-void
.end method
