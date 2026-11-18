.class Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;
.super Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;
.source "CellAnimatorFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/CellAnimatorFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/CellAnimatorFeature;


# direct methods
.method protected constructor <init>(Lcom/taobao/uikit/feature/features/CellAnimatorFeature;Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->this$0:Lcom/taobao/uikit/feature/features/CellAnimatorFeature;

    .line 155
    invoke-direct {p0, p2}, Lcom/taobao/uikit/feature/features/cellanimator/CellAnimatorAdapter;-><init>(Landroid/widget/BaseAdapter;)V

    return-void
.end method


# virtual methods
.method public getAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;
    .locals 4

    .line 160
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->this$0:Lcom/taobao/uikit/feature/features/CellAnimatorFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->access$000(Lcom/taobao/uikit/feature/features/CellAnimatorFeature;)Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    .line 162
    new-array v0, p1, [Landroid/animation/Animator;

    const/4 v1, 0x0

    new-array v2, p1, [F

    fill-array-data v2, :array_0

    const-string v3, "translationY"

    invoke-static {p2, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    const-string v2, "rotationX"

    invoke-static {p2, v2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v0, v1

    return-object v0

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$AnimatorAdapter;->this$0:Lcom/taobao/uikit/feature/features/CellAnimatorFeature;

    invoke-static {v0}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature;->access$000(Lcom/taobao/uikit/feature/features/CellAnimatorFeature;)Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/taobao/uikit/feature/features/CellAnimatorFeature$CustomAnimatorFactory;->generateAnimators(Landroid/view/ViewGroup;Landroid/view/View;)[Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x43c80000    # 400.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x41700000    # 15.0f
        0x0
    .end array-data
.end method
