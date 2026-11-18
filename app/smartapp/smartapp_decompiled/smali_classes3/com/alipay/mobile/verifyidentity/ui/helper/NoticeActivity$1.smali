.class Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;
.super Ljava/lang/Object;
.source "NoticeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V
    .locals 1

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

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
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoticeActivity onClick alertPositive"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    .line 50
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->access$200(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V

    return-void
.end method
