.class Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;
.super Ljava/lang/Object;
.source "BinaryPageFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToLastPageTop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

.field final synthetic val$duration:I


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;I)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iput p2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 246
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$000(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->val$duration:I

    invoke-virtual {v0, v2, v1, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 248
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1$1;-><init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;)V

    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v2}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$000(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 258
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$100(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    move-result-object v0

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    invoke-static {v0, v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$102(Lcom/taobao/uikit/feature/features/BinaryPageFeature;Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    :cond_1
    :goto_0
    return-void
.end method
