.class Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;
.super Ljava/lang/Object;
.source "KeyBoardVisibleListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->addOnSoftKeyBoardVisibleListener(Landroid/app/Activity;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;

.field final synthetic val$decorView:Landroid/view/View;

.field final synthetic val$listener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;Landroid/view/View;Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->val$decorView:Landroid/view/View;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->val$listener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 24
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 25
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v1, v1

    int-to-double v3, v0

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->access$000(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    .line 30
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->val$listener:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;

    invoke-interface {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$OnSoftKeyBoardVisibleListener;->onSoftKeyBoardVisible(Z)V

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener$1;->this$0:Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;->access$002(Lcom/alibaba/ailabs/genie/contacts/common/keyboard/KeyBoardVisibleListener;Z)Z

    return-void
.end method
