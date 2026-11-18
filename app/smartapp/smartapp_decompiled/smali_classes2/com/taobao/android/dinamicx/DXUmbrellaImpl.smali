.class public Lcom/taobao/android/dinamicx/DXUmbrellaImpl;
.super Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;
.source "DXUmbrellaImpl.java"


# instance fields
.field private umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/monitor/DXAbsUmbrella;-><init>()V

    .line 24
    invoke-static {}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;->umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    return-void
.end method


# virtual methods
.method public commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
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
    iget-object v1, v0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;->umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    if-nez v1, :cond_0

    return-void

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 44
    invoke-interface/range {v1 .. v9}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitFailure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
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

    .line 30
    iget-object v0, p0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;->umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 33
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 52
    iget-object v1, v0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;->umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v1, 0x0

    if-eqz p8, :cond_1

    .line 58
    invoke-static/range {p8 .. p8}, Lcom/alibaba/android/umbrella/link/export/UMUserData;->fromMap(Ljava/util/Map;)Lcom/alibaba/android/umbrella/link/export/UMUserData;

    move-result-object v1

    :cond_1
    move-object v10, v1

    .line 60
    iget-object v2, v0, Lcom/taobao/android/dinamicx/DXUmbrellaImpl;->umLogInstance:Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;->logErrorRawDim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/umbrella/link/UMRefContext;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/alibaba/android/umbrella/link/export/UMUserData;)V

    return-void
.end method
