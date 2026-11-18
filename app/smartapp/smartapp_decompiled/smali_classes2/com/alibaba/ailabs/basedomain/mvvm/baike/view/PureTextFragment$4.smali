.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "text_drag"

    const-string v1, "a1z3lt.12041697"

    const-string v2, "PureTextFragment"

    .line 101
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/basedomain/common/CommonUtil;->utEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 102
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$4;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$202(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;Z)Z

    :cond_0
    return p2
.end method
