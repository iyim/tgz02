.class Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;
.super Ljava/lang/Object;
.source "ParallaxScrollFeature.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->setHost(Landroid/widget/ScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$1;->this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->access$000(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;)V

    return-void
.end method
