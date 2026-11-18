.class Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;
.super Ljava/lang/Object;
.source "BounceScrollFeature.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/BounceScrollFeature;->setHost(Landroid/widget/ScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/BounceScrollFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/BounceScrollFeature;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BounceScrollFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BounceScrollFeature;

    invoke-static {p1, p2}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/BounceScrollFeature;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/BounceScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/BounceScrollFeature;

    invoke-static {p1, p2}, Lcom/taobao/uikit/feature/features/BounceScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/BounceScrollFeature;Landroid/view/View;)V

    return-void
.end method
