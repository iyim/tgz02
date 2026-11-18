.class Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;
.super Ljava/lang/Object;
.source "PureTextFragment.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


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

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment$3;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;->access$202(Lcom/alibaba/ailabs/basedomain/mvvm/baike/view/PureTextFragment;Z)Z

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ut scrollY:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " oldScrollY:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PureTextFragment"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
