.class public Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;
.super Lcom/taobao/weex/common/WXModule;
.source "UmbrellaWeexModule.java"


# instance fields
.field private final umbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/taobao/weex/common/WXModule;-><init>()V

    .line 24
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;->umbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    return-void
.end method


# virtual methods
.method public commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 41
    iget-object v1, v0, Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;->umbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;->umbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/android/umbrella/link/UMRefContext;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/umbrella/link/UMRefContext;",
            "Ljava/util/Map<",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/umbrella/weex/UmbrellaWeexModule;->umbrella:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-static {p6}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    return-void
.end method
