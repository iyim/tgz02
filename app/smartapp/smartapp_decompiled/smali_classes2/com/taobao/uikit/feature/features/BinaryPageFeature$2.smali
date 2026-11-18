.class Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;
.super Ljava/lang/Object;
.source "BinaryPageFeature.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature;->scrollToFirstPageBottom(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

.field final synthetic val$duration:I

.field final synthetic val$offsetFromTop:I


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;II)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iput p2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$offsetFromTop:I

    iput p3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$000(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)I

    move-result v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$offsetFromTop:I

    iget v3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$duration:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    .line 283
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2$1;

    invoke-direct {v1, p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2$1;-><init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;)V

    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    iget-object v0, v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$000(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)I

    move-result v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->val$offsetFromTop:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 293
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$100(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    move-result-object v0

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$2;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    invoke-static {v0, v1}, Lcom/taobao/uikit/feature/features/BinaryPageFeature;->access$102(Lcom/taobao/uikit/feature/features/BinaryPageFeature;Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    :cond_1
    :goto_0
    return-void
.end method
