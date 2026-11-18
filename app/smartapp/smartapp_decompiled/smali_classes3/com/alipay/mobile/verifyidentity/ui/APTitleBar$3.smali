.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$3;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .line 915
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

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
.method public run()V
    .locals 2

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->access$000(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/APProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
