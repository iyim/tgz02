.class Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;
.super Ljava/lang/Object;
.source "ParallaxScrollFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ParallaxView"
.end annotation


# instance fields
.field protected lastOffset:I

.field final synthetic this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;

.field protected view:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;Landroid/view/View;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->this$0:Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 134
    iput p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->lastOffset:I

    .line 135
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->view:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public setOffset(F)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->view:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 144
    invoke-static {}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->translatePreICS(Landroid/view/View;F)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected translatePreICS(Landroid/view/View;F)V
    .locals 1

    float-to-int p2, p2

    .line 157
    iget v0, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->lastOffset:I

    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 158
    iput p2, p0, Lcom/taobao/uikit/feature/features/ParallaxScrollFeature$ParallaxView;->lastOffset:I

    return-void
.end method
