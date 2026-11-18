.class Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;
.super Ljava/lang/Object;
.source "APInputBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

.field final synthetic val$parent:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/ui/APInputBox;Landroid/view/View;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iput-object p2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->val$parent:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 255
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v1, v1, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;->getHitRect(Landroid/graphics/Rect;)V

    .line 258
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 259
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 260
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit16 v1, v1, -0xc8

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 261
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 263
    new-instance v1, Landroid/view/TouchDelegate;

    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->this$0:Lcom/alipay/mobile/verifyidentity/ui/APInputBox;

    iget-object v2, v2, Lcom/alipay/mobile/verifyidentity/ui/APInputBox;->mInputContent:Lcom/alipay/mobile/verifyidentity/ui/keyboard/APSafeEditText;

    invoke-direct {v1, v0, v2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/APInputBox$1;->val$parent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    return-void
.end method
