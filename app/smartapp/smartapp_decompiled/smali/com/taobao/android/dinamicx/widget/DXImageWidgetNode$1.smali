.class Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;
.super Ljava/lang/Object;
.source "DXImageWidgetNode.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->onRenderView(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;

.field final synthetic val$realImageUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;->val$realImageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;)Z
    .locals 7

    .line 298
    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageResult;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 301
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-lez p1, :cond_0

    .line 303
    sget-object v1, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->imageRatioCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;->val$realImageUrl:Ljava/lang/String;

    int-to-double v3, v0

    int-to-double v5, p1

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$1;->this$0:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 309
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setNeedLayout()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
