.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;)V
    .locals 1

    .line 378
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

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
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 382
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$3;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    invoke-virtual {p1}, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->onInputLayputTouchEvent()Z

    move-result p1

    return p1
.end method
