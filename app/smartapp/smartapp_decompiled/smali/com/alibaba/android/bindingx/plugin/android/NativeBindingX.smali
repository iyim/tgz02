.class public Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
.super Ljava/lang/Object;
.source "NativeBindingX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;,
        Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewFinderProxy;
    }
.end annotation


# instance fields
.field private mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;


# direct methods
.method private constructor <init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V
    .locals 1
    .param p1    # Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 85
    new-instance p1, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$1;

    invoke-direct {p1, p0}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$1;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;)V

    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance p2, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$2;

    invoke-direct {p2, p0}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$2;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;)V

    :cond_1
    if-nez p3, :cond_2

    .line 117
    new-instance p3, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$3;

    invoke-direct {p3, p0}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$3;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;

    invoke-direct {v0, p3}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewUpdaterProxy;-><init>(Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;)V

    move-object p3, v0

    .line 136
    :goto_0
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewFinderProxy;

    invoke-direct {v0, p1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$ViewFinderProxy;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->createPlatformManager(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object p1

    .line 137
    new-instance p2, Lcom/alibaba/android/bindingx/core/BindingXCore;

    invoke-direct {p2, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;-><init>(Lcom/alibaba/android/bindingx/core/PlatformManager;)V

    iput-object p2, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 139
    iget-object p1, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    new-instance p2, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$4;

    invoke-direct {p2, p0}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$4;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;)V

    const-string/jumbo p3, "scroll"

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    return-void
.end method

.method public static create()Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 2

    .line 51
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V

    return-object v0
.end method

.method public static create(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;)Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 2
    .param p0    # Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V

    return-object v0
.end method

.method public static create(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 2
    .param p0    # Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 62
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V

    return-object v0
.end method

.method public static create(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;)Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 2
    .param p0    # Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V

    return-object v0
.end method

.method public static create(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;
    .locals 1
    .param p0    # Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    new-instance v0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/plugin/android/INativeViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)V

    return-object v0
.end method

.method private createPlatformManager(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)Lcom/alibaba/android/bindingx/core/PlatformManager;
    .locals 1
    .param p1    # Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 226
    new-instance v0, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    invoke-direct {v0}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;-><init>()V

    .line 227
    invoke-virtual {v0, p1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewFinder(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewFinder;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p1

    .line 228
    invoke-virtual {p1, p2}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withDeviceResolutionTranslator(Lcom/alibaba/android/bindingx/core/PlatformManager$IDeviceResolutionTranslator;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p1

    .line 229
    invoke-virtual {p1, p3}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withViewUpdater(Lcom/alibaba/android/bindingx/core/PlatformManager$IViewUpdater;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p1

    .line 230
    invoke-virtual {p1, p4}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->withScrollFactory(Lcom/alibaba/android/bindingx/core/PlatformManager$IScrollFactory;)Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Lcom/alibaba/android/bindingx/core/PlatformManager$Builder;->build()Lcom/alibaba/android/bindingx/core/PlatformManager;

    move-result-object p1

    return-object p1
.end method

.method private resolveParams(Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 236
    iget-object v1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->eventType:Ljava/lang/String;

    const-string v2, "eventType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->anchor:Ljava/lang/String;

    const-string v2, "anchor"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->options:Ljava/util/Map;

    const-string v2, "options"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->exitExpression:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    const-string/jumbo v2, "transformed"

    const-string v3, "origin"

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->exitExpression:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    invoke-static {v1}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->isValid(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 242
    iget-object v5, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->exitExpression:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v5, v5, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v5, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->exitExpression:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v5, v5, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "exitExpression"

    .line 244
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 248
    iget-object p1, p1, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;->expressionProps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;

    .line 249
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 250
    iget-object v7, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->property:Ljava/lang/String;

    const-string v8, "property"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v7, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->element:Ljava/lang/String;

    const-string v8, "element"

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 255
    iget-object v8, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    if-eqz v8, :cond_1

    iget-object v8, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    invoke-static {v8}, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->isValid(Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 256
    iget-object v8, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v8, v8, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->origin:Ljava/lang/String;

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v5, v5, Lcom/alibaba/android/bindingx/plugin/android/model/BindingXPropSpec;->expressionPair:Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;

    iget-object v5, v5, Lcom/alibaba/android/bindingx/core/internal/ExpressionPair;->transformed:Ljava/lang/String;

    invoke-interface {v7, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v5, "expression"

    .line 260
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string p1, "props"

    .line 263
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bind(Landroid/view/View;Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;",
            "Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "params invalid. bindingX spec is null"

    .line 158
    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->resolveParams(Lcom/alibaba/android/bindingx/plugin/android/model/BindingXSpec;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->bind(Landroid/view/View;Ljava/util/Map;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bind(Landroid/view/View;Ljava/util/Map;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "params invalid. view is null"

    .line 167
    invoke-static {p1}, Lcom/alibaba/android/bindingx/core/LogProxy;->e(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p2, :cond_1

    .line 170
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v4, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;

    invoke-direct {v4, p0, p3}, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX$5;-><init>(Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;Lcom/alibaba/android/bindingx/plugin/android/NativeCallback;)V

    const/4 p3, 0x1

    new-array v5, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, v5, p3

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doBind(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/bindingx/core/BindingXCore$JavaScriptCallback;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    new-instance p3, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {p3, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v0, "token"

    .line 180
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "eventType"

    .line 181
    invoke-static {p2, p1}, Lcom/alibaba/android/bindingx/core/internal/Utils;->getStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method public onActivityPause()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityPause()V

    :cond_0
    return-void
.end method

.method public onActivityResume()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->onActivityResume()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    .line 218
    invoke-static {}, Lcom/alibaba/android/bindingx/plugin/android/NativeViewUpdateService;->clearCallbacks()V

    :cond_0
    return-void
.end method

.method public registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator<",
            "Lcom/alibaba/android/bindingx/core/IEventHandler;",
            "Landroid/content/Context;",
            "Lcom/alibaba/android/bindingx/core/PlatformManager;",
            ">;)Z"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/bindingx/core/BindingXCore;->registerEventHandler(Ljava/lang/String;Lcom/alibaba/android/bindingx/core/BindingXCore$ObjectCreator;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unbind(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0, p1}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doUnbind(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public unbindAll()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/android/NativeBindingX;->mBindingXCore:Lcom/alibaba/android/bindingx/core/BindingXCore;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/alibaba/android/bindingx/core/BindingXCore;->doRelease()V

    :cond_0
    return-void
.end method
