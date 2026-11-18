.class final Lcom/taobao/android/dinamic/DinamicDataBinder;
.super Ljava/lang/Object;
.source "DinamicDataBinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static bindData(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 12

    .line 24
    invoke-static {p0}, Lcom/taobao/android/dinamic/DinamicViewUtils;->getViewProperty(Landroid/view/View;)Lcom/taobao/android/dinamic/property/DinamicProperty;

    move-result-object v0

    .line 26
    iget-object v1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->dinamicProperty:Ljava/util/Map;

    .line 27
    iget-object v2, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->eventProperty:Ljava/util/Map;

    .line 28
    iget-object v3, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/taobao/android/dinamic/Dinamic;->getViewConstructor(Ljava/lang/String;)Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;

    move-result-object v3

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 32
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 36
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->viewIdentify:Ljava/lang/String;

    invoke-static {v8, v9, p1}, Lcom/taobao/android/dinamic/expression/DinamicExpression;->getValue(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/android/dinamic/model/DinamicParams;)Ljava/lang/Object;

    move-result-object v8

    .line 38
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v8, :cond_0

    .line 39
    invoke-static {}, Lcom/taobao/android/dinamic/Dinamic;->isDebugable()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    .line 40
    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 41
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v10, v8

    const-string/jumbo v7, "\u8868\u8fbe\u5f0f %s=%s \u89e3\u6790\u51fa\u6765\u7684\u7ed3\u679c\u4e3anull"

    .line 40
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v11

    const-string v7, "Dinamic"

    invoke-static {v7, v9}, Lcom/taobao/android/dinamic/log/DinamicLog;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v0, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->fixedProperty:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
    invoke-virtual {v3, p0, v4, v5, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->bindDataImpl(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 50
    :cond_2
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 51
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->SUBDATA:I

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/model/DinamicParams;->getCurrentData()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {v3, p0, p1}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->setEvents(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    :cond_3
    return-void
.end method
