.class Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;
.super Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.source "ChildAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;

    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 3

    .line 298
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    return v0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x6

    return p1

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3$1;->this$1:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;

    iget-object p1, p1, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment$3;->this$0:Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;

    invoke-static {p1}, Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;->access$200(Lcom/alibaba/ailabs/appbox/childmodel/ChildAppListFragment;)I

    move-result p1

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
