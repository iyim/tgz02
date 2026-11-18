.class public final Lcom/taobao/android/dinamic/DinamicViewCreator;
.super Ljava/lang/Object;
.source "DinamicViewCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cloneView(Landroid/content/Context;Landroid/view/View;Lcom/taobao/android/dinamic/view/ViewResult;Lcom/taobao/android/dinamic/model/DinamicParams;)Landroid/view/View;
    .locals 5

    .line 124
    invoke-static {p1}, Lcom/taobao/android/dinamic/DinamicViewUtils;->getViewProperty(Landroid/view/View;)Lcom/taobao/android/dinamic/property/DinamicProperty;

    move-result-object v0

    .line 125
    iget-object v1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Lcom/taobao/android/dinamic/Dinamic;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object v1

    const-string/jumbo v2, "viewNotFound"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p0

    iget-object p1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 134
    :cond_0
    iget-object v4, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    invoke-virtual {v1, v4, p0, v3, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->initializeViewWithModule(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/taobao/android/dinamic/model/DinamicParams;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    .line 137
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p0

    iget-object p1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 142
    :cond_1
    instance-of v2, p0, Lcom/taobao/android/dinamic/view/DLoopLinearLayout;

    if-eqz v2, :cond_2

    instance-of v2, p1, Lcom/taobao/android/dinamic/view/DLoopLinearLayout;

    if-eqz v2, :cond_2

    .line 143
    move-object v2, p0

    nop

    nop

    nop

    nop

    .line 144
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/DLoopLinearLayout;->cloneTemplateViews()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/taobao/android/dinamic/view/DLoopLinearLayout;->setTemplateViews(Ljava/util/Map;)V

    .line 150
    :cond_2
    invoke-virtual {v1, p0}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->applyDefaultProperty(Landroid/view/View;)V

    .line 152
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->PROPERTY_KEY:I

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 154
    iget-object p1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->dinamicProperty:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->eventProperty:Ljava/util/Map;

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 156
    :cond_3
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getBindDataList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    iget-object p2, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object p2, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-virtual {v1, p0, p2, p1, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->bindDataImpl(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    return-object p0
.end method

.method public static createView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/taobao/android/dinamic/model/DinamicParams;)Landroid/view/View;
    .locals 3

    .line 27
    invoke-static {p0}, Lcom/taobao/android/dinamic/Dinamic;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "viewNotFound"

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    .line 30
    invoke-virtual {p1, v2, p0}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 35
    :cond_0
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->initializeViewWithModule(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/taobao/android/dinamic/model/DinamicParams;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/ViewResult;->getDinamicError()Lcom/taobao/android/dinamic/view/DinamicError;

    move-result-object p1

    .line 39
    invoke-virtual {p1, v2, p0}, Lcom/taobao/android/dinamic/view/DinamicError;->addErrorCodeWithInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 69
    :cond_1
    invoke-virtual {v0, p2}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->handleAttributeSet(Landroid/util/AttributeSet;)Lcom/taobao/android/dinamic/property/DinamicProperty;

    move-result-object p2

    .line 70
    iget-object v1, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->applyDefaultProperty(Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 72
    iget-object v1, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->dinamicProperty:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->eventProperty:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 73
    :cond_2
    invoke-virtual {p3}, Lcom/taobao/android/dinamic/model/DinamicParams;->getViewResult()Lcom/taobao/android/dinamic/view/ViewResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/android/dinamic/view/ViewResult;->getBindDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_3
    iput-object p0, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 77
    sget p0, Lcom/taobao/android/dinamic/DinamicTagKey;->PROPERTY_KEY:I

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 79
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    iget-object v1, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p2, p2, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p0, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->bindDataImpl(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    return-object p1
.end method

.method private static rMatchViewType(Landroid/view/View;Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;[Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 8

    .line 90
    invoke-virtual {p1}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->getDebugClass()Ljava/lang/Class;

    move-result-object p1

    .line 91
    const-class v0, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 98
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    const-string v5, "initializeViewWithModule"

    const/4 v6, 0x4

    .line 99
    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Landroid/util/AttributeSet;

    aput-object v7, v6, v2

    const-class v7, Lcom/taobao/android/dinamic/model/DinamicParams;

    aput-object v7, v6, v3

    invoke-virtual {p1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 101
    invoke-virtual {v5, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 103
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v4

    :catch_1
    :try_start_1
    const-string p2, "initializeView"

    .line 106
    new-array v3, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-class v4, Landroid/util/AttributeSet;

    aput-object v4, v3, v2

    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 108
    invoke-virtual {p1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return p0

    :catch_2
    return v1
.end method
