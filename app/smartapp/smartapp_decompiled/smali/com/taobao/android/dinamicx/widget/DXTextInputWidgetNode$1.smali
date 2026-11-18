.class Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;
.super Ljava/lang/Object;
.source "DXTextInputWidgetNode.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

.field final synthetic val$tv:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;Landroid/widget/EditText;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;->val$tv:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 219
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 221
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXTextInputWidgetNode$1;->val$tv:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
