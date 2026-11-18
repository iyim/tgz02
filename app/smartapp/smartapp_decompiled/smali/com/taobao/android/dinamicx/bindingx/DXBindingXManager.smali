.class public Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;
.super Lcom/taobao/android/dinamicx/DXBaseClass;
.source "DXBindingXManager.java"


# instance fields
.field bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

.field scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V
    .locals 3
    .param p1    # Lcom/taobao/android/dinamicx/DXEngineContext;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/DXBaseClass;-><init>(Lcom/taobao/android/dinamicx/DXEngineContext;)V

    .line 77
    new-instance p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXNativeViewFinder;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXNativeViewFinder;-><init>()V

    .line 78
    new-instance v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXViewUpdateManager;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXViewUpdateManager;-><init>()V

    .line 79
    new-instance v1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    invoke-direct {v1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;-><init>()V

    iput-object v1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    .line 80
    iget-object v1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->create(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->updateToken(Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->syncWidgetViewProperty(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->removeSpec(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 707
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->isFlatten()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 711
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getReferenceNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    return-object p1
.end method

.method private needProcessDefaultAP(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1

    const-string v0, "property"

    .line 206
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "transform.translate"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transform.translateX"

    .line 208
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "transform.translateY"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private processDollar(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 656
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x1

    .line 660
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_2

    .line 661
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 662
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "StringLiteral"

    .line 664
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private processPropValue(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONObject;IZ)V
    .locals 4

    const-string v0, "property"

    .line 226
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_43

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v1, "element_widgetnode"

    .line 232
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 233
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    goto :goto_3

    :cond_2
    :goto_0
    const-string v2, "element"

    .line 234
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->splitElement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "this"

    .line 235
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, p1

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWTByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_4

    .line 241
    invoke-virtual {p1, v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryWidgetNodeByUserId(Ljava/lang/String;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    if-nez p1, :cond_5

    return-void

    .line 246
    :cond_5
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string p2, "opacity"

    .line 251
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_a

    if-eq p3, v2, :cond_7

    if-eq p3, v1, :cond_6

    goto/16 :goto_4

    .line 256
    :cond_6
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 258
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_4

    .line 263
    :cond_7
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    return-void

    :cond_8
    if-nez p4, :cond_9

    .line 268
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAlpha(F)V

    .line 270
    :cond_9
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setAlpha(F)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo p2, "transform.translate"

    .line 278
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    if-eq p3, v2, :cond_c

    if-eq p3, v1, :cond_b

    goto/16 :goto_4

    .line 283
    :cond_b
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 285
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTranslateX()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 286
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTranslateY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_4

    .line 291
    :cond_c
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_d

    return-void

    .line 295
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p3

    .line 296
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    if-nez p4, :cond_e

    .line 298
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateX(F)V

    .line 299
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateY(F)V

    .line 301
    :cond_e
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 303
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateX(F)V

    .line 304
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateY(F)V

    goto/16 :goto_4

    :cond_f
    const-string/jumbo p2, "transform.translateX"

    .line 309
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    if-eq p3, v2, :cond_11

    if-eq p3, v1, :cond_10

    goto/16 :goto_4

    .line 314
    :cond_10
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 316
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTranslateX()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    goto/16 :goto_4

    .line 321
    :cond_11
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_12

    return-void

    .line 325
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    if-nez p4, :cond_13

    .line 327
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateX(F)V

    .line 329
    :cond_13
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 331
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateX(F)V

    goto/16 :goto_4

    :cond_14
    const-string/jumbo p2, "transform.translateY"

    .line 336
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    if-eq p3, v2, :cond_16

    if-eq p3, v1, :cond_15

    goto/16 :goto_4

    .line 342
    :cond_15
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 344
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getTranslateY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_4

    .line 349
    :cond_16
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_17

    return-void

    .line 353
    :cond_17
    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    if-nez p4, :cond_18

    .line 355
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateY(F)V

    .line 357
    :cond_18
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 359
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setTranslateY(F)V

    goto/16 :goto_4

    :cond_19
    const-string/jumbo p2, "transform.scale"

    .line 364
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e

    if-eq p3, v2, :cond_1b

    if-eq p3, v1, :cond_1a

    goto/16 :goto_4

    .line 370
    :cond_1a
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 372
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getScaleX()F

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 373
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getScaleY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    .line 378
    :cond_1b
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1c

    return-void

    .line 382
    :cond_1c
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p3

    .line 383
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    if-nez p4, :cond_1d

    .line 385
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleX(F)V

    .line 386
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleY(F)V

    .line 388
    :cond_1d
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 390
    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleX(F)V

    .line 391
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleY(F)V

    goto/16 :goto_4

    :cond_1e
    const-string/jumbo p2, "transform.scaleX"

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    if-eq p3, v2, :cond_20

    if-eq p3, v1, :cond_1f

    goto/16 :goto_4

    .line 404
    :cond_1f
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 406
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getScaleX()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleX(F)V

    goto/16 :goto_4

    .line 411
    :cond_20
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_21

    return-void

    .line 415
    :cond_21
    invoke-virtual {p2}, Landroid/view/View;->getScaleX()F

    move-result p2

    if-nez p4, :cond_22

    .line 417
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleX(F)V

    .line 419
    :cond_22
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 421
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleX(F)V

    goto/16 :goto_4

    :cond_23
    const-string/jumbo p2, "transform.scaleY"

    .line 426
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    if-eq p3, v2, :cond_25

    if-eq p3, v1, :cond_24

    goto/16 :goto_4

    .line 432
    :cond_24
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 434
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getScaleY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_4

    .line 439
    :cond_25
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_26

    return-void

    .line 443
    :cond_26
    invoke-virtual {p2}, Landroid/view/View;->getScaleY()F

    move-result p2

    if-nez p4, :cond_27

    .line 445
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleY(F)V

    .line 447
    :cond_27
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 449
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setScaleY(F)V

    goto/16 :goto_4

    :cond_28
    const-string/jumbo p2, "transform.rotateX"

    .line 454
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    if-eq p3, v2, :cond_2a

    if-eq p3, v1, :cond_29

    goto/16 :goto_4

    .line 460
    :cond_29
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 462
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRotationX()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setRotationX(F)V

    goto/16 :goto_4

    .line 467
    :cond_2a
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2b

    return-void

    .line 471
    :cond_2b
    invoke-virtual {p2}, Landroid/view/View;->getRotationX()F

    move-result p2

    if-nez p4, :cond_2c

    .line 473
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationX(F)V

    .line 475
    :cond_2c
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 477
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationX(F)V

    goto/16 :goto_4

    :cond_2d
    const-string/jumbo p2, "transform.rotateY"

    .line 482
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    if-eq p3, v2, :cond_2f

    if-eq p3, v1, :cond_2e

    goto/16 :goto_4

    .line 486
    :cond_2e
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 488
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRotationY()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setRotationY(F)V

    goto/16 :goto_4

    .line 492
    :cond_2f
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_30

    return-void

    .line 496
    :cond_30
    invoke-virtual {p2}, Landroid/view/View;->getRotationY()F

    move-result p2

    if-nez p4, :cond_31

    .line 498
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationY(F)V

    .line 500
    :cond_31
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 502
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationY(F)V

    goto/16 :goto_4

    :cond_32
    const-string/jumbo p2, "transform.rotateZ"

    .line 507
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    if-eq p3, v2, :cond_34

    if-eq p3, v1, :cond_33

    goto/16 :goto_4

    .line 512
    :cond_33
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 514
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getRotationZ()F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setRotation(F)V

    goto/16 :goto_4

    .line 519
    :cond_34
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_35

    return-void

    .line 523
    :cond_35
    invoke-virtual {p2}, Landroid/view/View;->getRotation()F

    move-result p2

    if-nez p4, :cond_36

    .line 525
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationZ(F)V

    .line 527
    :cond_36
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 529
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setRotationZ(F)V

    goto/16 :goto_4

    :cond_37
    const-string p2, "background-color"

    .line 534
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    if-eq p3, v2, :cond_39

    if-eq p3, v1, :cond_38

    goto/16 :goto_4

    .line 540
    :cond_38
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 542
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBackGroundColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_4

    .line 547
    :cond_39
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3a

    return-void

    .line 551
    :cond_3a
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 552
    instance-of p3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_43

    if-nez p4, :cond_3b

    .line 554
    move-object p3, p2

    nop

    nop

    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBackGroundColor(I)V

    .line 556
    :cond_3b
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-nez p1, :cond_3c

    return-void

    .line 560
    :cond_3c
    nop

    nop

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBackGroundColor(I)V

    goto :goto_4

    :cond_3d
    const-string p2, "color"

    .line 565
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 566
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;

    if-nez p2, :cond_3e

    return-void

    :cond_3e
    if-eq p3, v2, :cond_40

    if-eq p3, v1, :cond_3f

    goto :goto_4

    .line 574
    :cond_3f
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 575
    instance-of p3, p2, Landroid/widget/TextView;

    if-eqz p3, :cond_43

    .line 576
    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->getTextColor()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 581
    :cond_40
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_43

    .line 582
    instance-of p3, p2, Landroid/widget/TextView;

    if-nez p3, :cond_41

    goto :goto_4

    .line 586
    :cond_41
    nop

    nop

    invoke-virtual {p2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    if-nez p4, :cond_42

    .line 588
    move-object p3, p1

    nop

    nop

    invoke-virtual {p3, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setTextColor(I)V

    .line 590
    :cond_42
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->getFlatten(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 591
    instance-of p3, p1, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;

    if-eqz p3, :cond_43

    .line 592
    nop

    nop

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->setTextColor(I)V

    nop

    :cond_43
    :goto_4
    return-void
.end method

.method private processScrollAction(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 1110
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "sourceId"

    .line 1113
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offsetX"

    .line 1117
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1118
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "offsetY"

    .line 1120
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1121
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2
    const-string v2, "args"

    .line 1123
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    const-string/jumbo v2, "scroll_beigin"

    .line 1125
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1126
    iget-object p2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    invoke-virtual {p2, v0, v1, v3, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->postScrollStartMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "scrolling"

    .line 1127
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1128
    iget-object p2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    invoke-virtual {p2, v0, v1, v3, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->postScrollingMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "scroll_end"

    .line 1129
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1130
    iget-object p2, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    invoke-virtual {p2, v0, v1, v3, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;->postScrollEndMessage(Ljava/lang/String;IILcom/alibaba/fastjson/JSONObject;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private processTransformed(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->propsJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string/jumbo v1, "transformed"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 188
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string v6, "expression"

    .line 189
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 190
    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 191
    invoke-direct {p0, v5}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->needProcessDefaultAP(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v5

    invoke-direct {p0, v6, p2, v5}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->transformPropAST(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    :cond_0
    iget-object p1, p1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->exitExpression:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1, p2, v2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->transformPropAST(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method private putSpec(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->putBindingXExecutingSpec(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 885
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->_addAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeSpec(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 892
    :cond_0
    invoke-virtual {p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->removeBindingXSpec(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 893
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->hasExecutingAnimationSpec()Z

    move-result p3

    if-nez p3, :cond_1

    .line 894
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->_removeAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static splitElement(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 677
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 678
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private syncWidgetViewProperty(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V
    .locals 3

    .line 928
    iget-object p2, p2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->propsJsonArray:Lcom/alibaba/fastjson/JSONArray;

    .line 929
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 931
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 932
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processPropValue(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONObject;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private transformPropAST(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "type"

    .line 609
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    .line 610
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 613
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v2

    nop

    nop

    const-string v4, "$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 614
    invoke-direct {p0, p2, v3, v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processDollar(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    :try_start_0
    const-string v4, "NumericLiteral"

    .line 618
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 619
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 620
    move-object v0, v2

    nop

    nop

    const-string v4, "ap"

    .line 621
    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 622
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 624
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 623
    invoke-static {v2, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 625
    :cond_2
    move-object v4, v2

    nop

    nop

    const-string v5, "np"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 626
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 628
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 627
    invoke-static {v2, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 633
    invoke-static {v0}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    .line 634
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    move-object v0, v2

    .line 636
    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "children"

    .line 637
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 638
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 639
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 640
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 641
    invoke-direct {p0, v0, p2, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->transformPropAST(Lcom/alibaba/fastjson/JSONObject;Ljava/util/Map;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private unBindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;ZZZ)V
    .locals 2

    if-eqz p3, :cond_3

    .line 1151
    iget-object v0, p3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    iget-object v1, p3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->unbind(Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 1155
    invoke-direct {p0, v0, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->updateToken(Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    if-eqz p5, :cond_1

    const/4 p5, 0x2

    .line 1157
    invoke-direct {p0, p2, p3, p5, p6}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->syncWidgetViewProperty(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    goto :goto_0

    :cond_1
    const/4 p5, 0x1

    .line 1159
    invoke-direct {p0, p2, p3, p5, p6}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->syncWidgetViewProperty(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;IZ)V

    :goto_0
    if-eqz p4, :cond_2

    .line 1162
    invoke-direct {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->removeSpec(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 1164
    :cond_2
    iget-object p1, p3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->eventType:Ljava/lang/String;

    const-string/jumbo p4, "timing"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide p4, 0x5cd5ef47d712a8a4L

    .line 1165
    iget-object p1, p3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    invoke-virtual {p0, p2, p4, p5, p1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateToken(Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;",
            ")V"
        }
    .end annotation

    .line 916
    iput-object p1, p2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method bindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V
    .locals 4

    .line 770
    invoke-virtual {p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getNativeView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 772
    sget v1, Lcom/taobao/android/dinamicx/DXPublicConstant;->TAG_ANIMATION_EXPANDED_WIDGET_ON_VIEW:I

    invoke-virtual {v0, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    iget-object v2, p2, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->specOriginMap:Lcom/alibaba/fastjson/JSONObject;

    new-instance v3, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;

    invoke-direct {v3, p0, p2, p1, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager$1;-><init>(Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->bind(Landroid/view/View;Ljava/util/Map;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 867
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    invoke-direct {p0, v0, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->updateToken(Ljava/util/Map;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    .line 869
    invoke-direct {p0, p1, p3, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->putSpec(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;)V

    :cond_1
    return-void
.end method

.method public getBindingX()Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 1

    .line 1135
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    return-object v0
.end method

.method public getScrollHandler()Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->scrollHandler:Lcom/taobao/android/dinamicx/bindingx/DXBindingXScrollHandler;

    return-object v0
.end method

.method public parseBindingXSpec(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 97
    :cond_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    .line 101
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    .line 105
    :cond_1
    new-instance v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    invoke-direct {v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;-><init>()V

    .line 106
    iput-object p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->name:Ljava/lang/String;

    const-string p1, "eventType"

    .line 107
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->eventType:Ljava/lang/String;

    .line 108
    iput-object p2, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->specOriginMap:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo p1, "resetOnStop"

    if-eqz p3, :cond_2

    .line 111
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 116
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "false"

    if-nez v1, :cond_3

    .line 117
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnStop:Z

    :cond_3
    const-string/jumbo p1, "resetOnFinish"

    if-eqz p3, :cond_4

    .line 121
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 122
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnFinish:Z

    .line 130
    :cond_5
    iget-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnStop:Z

    const-string/jumbo v1, "true"

    if-nez p1, :cond_7

    const-string/jumbo p1, "updateFlattenOnlyOnStop"

    if-eqz p3, :cond_6

    .line 132
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 133
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnStop:Z

    .line 142
    :cond_7
    iget-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnFinish:Z

    if-nez p1, :cond_9

    const-string/jumbo p1, "updateFlattenOnlyOnFinish"

    if-eqz p3, :cond_8

    .line 144
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 145
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    .line 147
    :cond_8
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 150
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnFinish:Z

    :cond_9
    const-string/jumbo p1, "repeat"

    if-eqz p3, :cond_a

    .line 156
    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 157
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_4

    .line 159
    :cond_a
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->repeat:Z

    :cond_b
    const-string p1, "props"

    .line 166
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->propsJsonArray:Lcom/alibaba/fastjson/JSONArray;

    const-string p1, "exitExpression"

    .line 167
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->exitExpression:Lcom/alibaba/fastjson/JSONObject;

    .line 170
    invoke-direct {p0, v0, p3}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processTransformed(Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Ljava/util/Map;)V

    return-object v0

    :cond_c
    :goto_5
    return-object v1
.end method

.method postEvent(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;JLjava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 909
    :cond_0
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;

    invoke-direct {v0, p2, p3, p4}, Lcom/taobao/android/dinamicx/expression/event/bindingx/DXBindingXStateChangeEvent;-><init>(JLjava/lang/String;)V

    .line 911
    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method

.method public processDXMsg(Lcom/taobao/android/dinamicx/DXRootView;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 5

    .line 1040
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    if-eqz v0, :cond_8

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "params"

    .line 1043
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string v0, "action"

    .line 1047
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "scrolling"

    .line 1049
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "scroll_beigin"

    .line 1050
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "scroll_end"

    .line 1051
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v1, "spec"

    .line 1061
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    const-string/jumbo v2, "widget"

    .line 1064
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1067
    instance-of v3, v2, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz v3, :cond_6

    .line 1068
    nop

    nop

    .line 1069
    invoke-virtual {v2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->queryRootWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v3

    .line 1077
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v4

    if-eq v3, v4, :cond_4

    return-void

    :cond_4
    const-string v3, "args"

    .line 1081
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const-string/jumbo v3, "start"

    .line 1082
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1083
    invoke-virtual {p0, p1, v2, v1, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->startAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONArray;Ljava/util/Map;)V

    goto :goto_0

    :cond_5
    const-string/jumbo p2, "stop"

    .line 1084
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1085
    invoke-virtual {p0, p1, v2, v1}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->stopAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONArray;)V

    :cond_6
    :goto_0
    return-void

    .line 1053
    :cond_7
    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->processScrollAction(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public resetAnimationOnRootView(Lcom/taobao/android/dinamicx/DXRootView;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->_getAnimationWidgets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 997
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 1000
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    .line 1001
    invoke-virtual {v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 1002
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    .line 1005
    :cond_3
    invoke-interface {v9}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v1

    .line 1007
    invoke-direct/range {v2 .. v8}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->unBindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;ZZZ)V

    goto :goto_1

    .line 1010
    :cond_4
    invoke-interface {v9}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 1014
    :cond_5
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->_clearAnimationWidgets()V

    :cond_6
    :goto_2
    return-void
.end method

.method public startAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONArray;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            "Lcom/alibaba/fastjson/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 693
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 696
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 697
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 698
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->startAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public startAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            "Lcom/taobao/android/dinamicx/widget/DXWidgetNode;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 723
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/DXRootView;->getExpandWidgetNode()Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    move-result-object v0

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 724
    iget-object v1, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    if-eqz v1, :cond_8

    .line 725
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAnimation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 726
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 727
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 733
    :cond_0
    invoke-virtual {p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->containsExecutingAnimationSpec(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 740
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXSpecMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p4, :cond_2

    .line 743
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    .line 744
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    :cond_3
    if-nez v1, :cond_4

    .line 749
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getAnimation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0, p4}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->parseBindingXSpec(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    return-void

    :cond_5
    if-nez v2, :cond_6

    .line 755
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 756
    invoke-interface {p4, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual {p2, p4}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->setBindingXSpecMap(Ljava/util/Map;)V

    goto :goto_0

    .line 759
    :cond_6
    invoke-interface {v2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    :goto_0
    iget-object p3, v1, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->token:Ljava/util/Map;

    if-eqz p3, :cond_7

    return-void

    .line 765
    :cond_7
    invoke-virtual {p0, p1, v1, p2}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public stopAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 10

    .line 945
    iget-object v0, p0, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->bindingX:Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 951
    :cond_1
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->_containAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 956
    :cond_2
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getBindingXExecutingMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 957
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_5

    .line 961
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    .line 962
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 963
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 964
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    .line 966
    iget-boolean v8, v6, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnStop:Z

    iget-boolean v9, v6, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnStop:Z

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v9}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->unBindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;ZZZ)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 972
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;

    if-eqz v5, :cond_6

    const/4 v6, 0x0

    .line 974
    iget-boolean v7, v5, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->resetOnStop:Z

    iget-boolean v8, v5, Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;->updateFlattenOnlyOnStop:Z

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/taobao/android/dinamicx/bindingx/DXBindingXManager;->unBindAnimation(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Lcom/taobao/android/dinamicx/bindingx/DXBindingXSpec;ZZZ)V

    goto :goto_1

    .line 979
    :cond_7
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 980
    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/DXRootView;->_removeAnimationWidget(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;)V

    :cond_8
    :goto_2
    return-void
.end method
