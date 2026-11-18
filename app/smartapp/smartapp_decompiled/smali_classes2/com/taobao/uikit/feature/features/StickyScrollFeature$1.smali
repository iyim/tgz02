.class Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;
.super Ljava/lang/Object;
.source "StickyScrollFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/StickyScrollFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$100(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v1}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$200(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I

    move-result v1

    .line 82
    iget-object v2, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v2}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$300(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)I

    move-result v2

    .line 83
    iget-object v3, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-virtual {v3}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v4}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v5}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$400(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)F

    move-result v5

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 84
    iget-object v4, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-virtual {v4}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/widget/ScrollView;->invalidate(IIII)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$500(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$508(Lcom/taobao/uikit/feature/features/StickyScrollFeature;)I

    .line 90
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-virtual {v0}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->getHost()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
