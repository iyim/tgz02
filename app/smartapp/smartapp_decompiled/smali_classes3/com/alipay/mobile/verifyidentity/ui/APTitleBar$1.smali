.class Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;
.super Ljava/lang/Object;
.source "APTitleBar.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APTextView$OnTextViewTextChangeListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;)V
    .locals 1

    .line 167
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

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
.method public onTextViewTextChange(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APTitleBar;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 171
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 172
    nop

    nop

    .line 173
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
