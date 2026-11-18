.class Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$6;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;->setTextTouch(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter$6;->this$0:Lcom/alibaba/ailabs/genie/message/ui/adapter/MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 224
    check-cast p1, Landroid/widget/TextView;

    .line 225
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 226
    instance-of v2, v1, Landroid/text/SpannableString;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v0, v3, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 229
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    .line 232
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v2

    add-int/2addr v0, v2

    .line 235
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 237
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 238
    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float v0, v0

    .line 239
    invoke-virtual {v2, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 241
    check-cast v1, Landroid/text/SpannableString;

    const-class v0, Landroid/text/style/ClickableSpan;

    invoke-virtual {v1, p2, p2, v0}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 242
    array-length v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 243
    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_0
    return v3
.end method
