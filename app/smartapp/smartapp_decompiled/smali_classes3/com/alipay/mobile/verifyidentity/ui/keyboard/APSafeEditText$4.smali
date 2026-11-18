.class Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;
.super Ljava/lang/Object;
.source "APSafeEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;)V
    .locals 1

    .line 558
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

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
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText$4;->this$0:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
