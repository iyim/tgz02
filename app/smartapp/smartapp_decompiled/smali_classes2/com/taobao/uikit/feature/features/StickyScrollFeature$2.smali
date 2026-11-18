.class Lcom/taobao/uikit/feature/features/StickyScrollFeature$2;
.super Ljava/lang/Object;
.source "StickyScrollFeature.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/feature/features/StickyScrollFeature;->setHost(Landroid/widget/ScrollView;)V
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

    .line 116
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$2;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 119
    iget-object p1, p0, Lcom/taobao/uikit/feature/features/StickyScrollFeature$2;->this$0:Lcom/taobao/uikit/feature/features/StickyScrollFeature;

    invoke-static {p1, p2}, Lcom/taobao/uikit/feature/features/StickyScrollFeature;->access$600(Lcom/taobao/uikit/feature/features/StickyScrollFeature;Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
