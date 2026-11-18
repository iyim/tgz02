.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .line 896
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

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
    .locals 3

    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$2;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 902
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 903
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    if-eqz v0, :cond_0

    .line 904
    instance-of p1, v0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 905
    nop

    nop

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
