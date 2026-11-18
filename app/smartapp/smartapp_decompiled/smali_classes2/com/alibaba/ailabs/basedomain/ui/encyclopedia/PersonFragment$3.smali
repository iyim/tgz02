.class Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;
.super Ljava/lang/Object;
.source "PersonFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->access$000(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "PersonFragment"

    const-string v2, "a1z3lt.12041687"

    if-eqz p1, :cond_0

    const-string p1, "text_drag"

    .line 97
    invoke-static {p1, v2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 98
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;->access$002(Lcom/alibaba/ailabs/basedomain/ui/encyclopedia/PersonFragment;Z)Z

    :cond_0
    const-string p1, "text_click"

    .line 100
    invoke-static {p1, v2, v1, v0}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return p2
.end method
