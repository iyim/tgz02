.class public Lcom/taobao/android/dinamicx/bindingx/DXBindingXNativeViewFinder;
.super Ljava/lang/Object;
.source "DXBindingXNativeViewFinder.java"

# interfaces
.implements Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDXRootView(Landroid/view/View;)Lcom/taobao/android/dinamicx/DXRootView;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 84
    :cond_0
    instance-of v1, p1, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v1, :cond_1

    .line 85
    nop

    nop

    return-object p1

    .line 88
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/taobao/android/dinamicx/DXRootView;

    if-nez v1, :cond_2

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 92
    :cond_2
    instance-of v1, p1, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v1, :cond_3

    .line 93
    nop

    nop

    return-object p1

    :cond_3
    return-object v0
.end method

.method private getFlattenWidget(Landroid/view/View;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 68
    :cond_0
    instance-of v1, p1, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz v1, :cond_1

    .line 69
    nop

    nop

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getFlattenWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1

    .line 71
    :cond_1
    sget v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->TAG_WIDGET_NODE:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 72
    instance-of v1, p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-nez v1, :cond_2

    return-object v0

    .line 75
    :cond_2
    nop

    nop

    return-object p1
.end method


# virtual methods
.method public findViewBy(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 21
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 25
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXNativeViewFinder;->getFlattenWidget(Landroid/view/View;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 26
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v1

    .line 30
    sget v2, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_ANIMATION_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eq v1, p1, :cond_2

    return-object v0

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 36
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getRootView()Lcom/taobao/android/dinamicx/DXRootView;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_b

    .line 39
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    if-eq v2, p1, :cond_4

    goto :goto_2

    .line 43
    :cond_4
    invoke-static {p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->splitElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "this"

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 46
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 49
    :cond_5
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_6
    :goto_1
    return-object v0

    .line 53
    :cond_7
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 54
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v2

    if-nez v2, :cond_9

    .line 55
    :cond_8
    invoke-virtual {v1, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWidgetNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p2

    :cond_9
    if-eqz p2, :cond_b

    .line 57
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_2

    .line 60
    :cond_a
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getWRView()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_b
    :goto_2
    return-object v0
.end method
