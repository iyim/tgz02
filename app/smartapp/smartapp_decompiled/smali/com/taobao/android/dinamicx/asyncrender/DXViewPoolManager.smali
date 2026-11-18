.class public Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;
.super Ljava/lang/Object;
.source "DXViewPoolManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager$DXViewPoolManagerHolder;
    }
.end annotation


# instance fields
.field private final v2TemplateViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/taobao/android/dinamic/view/ViewResult;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final v3TemplateViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;
    .locals 1

    .line 29
    invoke-static {}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager$DXViewPoolManagerHolder;->access$000()Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;

    move-result-object v0

    return-object v0
.end method

.method public static getV2TemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cacheV2ViewResult(Lcom/taobao/android/dinamic/view/ViewResult;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 48
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {p2}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->getV2TemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object p2

    .line 52
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    .line 53
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 57
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/util/Pools$Pool;

    if-nez p3, :cond_2

    .line 61
    new-instance p3, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {p3, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    .line 62
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :cond_2
    invoke-interface {p3, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public cacheV3View(Lcom/taobao/android/dinamicx/DXRootView;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 117
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v4/util/Pools$Pool;

    if-nez p3, :cond_2

    .line 127
    new-instance p3, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {p3, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    .line 128
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_2
    invoke-interface {p3, p1}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public clearV2Cache(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public clearV3Cache(Ljava/lang/String;)V
    .locals 1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    if-nez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method getV2TemplateViewCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/taobao/android/dinamic/view/ViewResult;",
            ">;>;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    return-object v0
.end method

.method getV3TemplateViewCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/taobao/android/dinamicx/DXRootView;",
            ">;>;>;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    return-object v0
.end method

.method public obtainV2View(Landroid/content/Context;Lcom/taobao/android/dinamic/tempate/DinamicTemplate;Ljava/lang/String;)Lcom/taobao/android/dinamic/view/ViewResult;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 76
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v2TemplateViewCache:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_1

    return-object v0

    .line 83
    :cond_1
    invoke-static {p2}, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->getV2TemplateKey(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/util/Pools$Pool;

    if-nez p2, :cond_2

    return-object v0

    .line 87
    :cond_2
    invoke-interface {p2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/dinamic/view/ViewResult;

    if-eqz p2, :cond_3

    .line 88
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 89
    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/ViewResult;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 90
    instance-of v0, p3, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 91
    nop

    nop

    invoke-virtual {p3, p1}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->setCurrentContext(Landroid/content/Context;)V

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    return-object v0
.end method

.method public obtainV3View(Landroid/content/Context;Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;Ljava/lang/String;)Lcom/taobao/android/dinamicx/DXRootView;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 143
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/taobao/android/dinamicx/asyncrender/DXViewPoolManager;->v3TemplateViewCache:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    if-nez p3, :cond_1

    return-object v0

    .line 150
    :cond_1
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v4/util/Pools$Pool;

    if-nez p2, :cond_2

    return-object v0

    .line 154
    :cond_2
    invoke-interface {p2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/taobao/android/dinamicx/DXRootView;

    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object p3

    instance-of p3, p3, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    .line 156
    invoke-virtual {p2}, Lcom/taobao/android/dinamicx/DXRootView;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;

    invoke-virtual {p3, p1}, Lcom/taobao/android/dinamicx/asyncrender/ViewContext;->setCurrentContext(Landroid/content/Context;)V

    :cond_3
    return-object p2

    :cond_4
    :goto_0
    return-object v0
.end method
